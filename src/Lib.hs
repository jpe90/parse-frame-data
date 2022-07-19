{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}

module Lib where

import Control.Applicative ((<|>))
import Control.Lens hiding (noneOf)
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as BL
import qualified Data.Char as DC
import Data.Foldable
import Data.Map (Map)
import qualified Data.Map as M
import Data.Text (pack)
import qualified Data.Text as T
import qualified Data.Text.IO as DTIO
import Debug.Trace (trace)
import Decls
import GHC.Unicode (toUpper)
import NeatInterpolation
import qualified NeatInterpolation as NI
import Network.Wreq
import Parsers
import Text.Parser.Token (TokenParsing (token))
import Text.RawString.QQ
import Text.Trifecta
import qualified Text.Trifecta as TT
import Control.Concurrent

headerListText :: RosterMoves' -> T.Text
headerListText (RosterMoves' roster) = M.foldrWithKey (\char val accum -> concatRoster val char <> accum) "" roster

concatRoster :: CharacterMoves' -> Character -> T.Text
concatRoster (CharacterMoves' sections) char = moves <> moveSectionList char
  where
    moves = foldr (\section acc -> joinMoves section char <> headerRowTemplate section char <> acc) "" sections

headerRowTemplate :: Section' -> Character -> T.Text
headerRowTemplate (Section' (mt, hl, ml)) (Character char) =
  [NI.text|

    var ${char}Header${mtt} = [
      $colList
    ];
|]
    <> "\n"
  where
    colList = foldr (\val acc -> headerColumnTemplate val <> acc) "" hl
    mtt = pack . show $ mt

headerColumnTemplate :: Header' -> T.Text
headerColumnTemplate (Header' t cs) =
  [NI.text|
    DataColumn2(
      label: Text("$t"),
      size: ColumnSize.$cst,
    ),|]
    <> "\n"
  where
    cst = (T.singleton . head . show) cs

textFromRosterMoves :: RosterMoves' -> RosterText
textFromRosterMoves (RosterMoves' roster) = RosterText (MoveText mt) ht
  where
    mt = M.foldrWithKey (\char val accum -> concatRoster val char <> accum) "" roster
    ht = headerFnTemplate (RosterMoves' roster)

headerFnTemplate :: RosterMoves' -> HeaderText
headerFnTemplate rm  = HeaderText $
  [NI.text|
  HashMap<Tuple2<Character,Category>, List<DataColumn>> getMap() {
    var headerMap = HashMap<Tuple2<Character,Category>, List<DataColumn>>();
    ${headers}
    return headerMap;
  }
  |]
    <> "\n"
  where
    headers =  T.filter (/='"') $ charHeaderAssignment rm

charHeaderAssignment :: RosterMoves' -> T.Text
charHeaderAssignment (RosterMoves' rm) = T.unlines $ M.foldrWithKey (\char val accum -> headerFnInnards val char <> accum) [] rm
  where
    headerFnInnards (CharacterMoves' listSect') (Character char) = (pack . show) . movetypes <$> listSect'
      where
        movetypes = \(Section' (moveType, _, _)) -> appendMapEntry moveType
          where
            appendMapEntry mt= "headerMap[Tuple2<Character,Category>(Character." <> char <> ", Category." <> T.toLower move <> ")] = " <> char <> "Header" <> move <> ";"
              where
                move = (pack . show) mt

moveSectionList :: Character -> T.Text
moveSectionList char = arrayTemplate char (T.intercalate (pack ",\n") (movesArray char))
  where
    movesArray (Character charTxt) =
      arrayLineTemplate charTxt <$> moveArray
      where
        moveArray = pack . show <$> [Normals ..]

joinMoves :: Section' -> Character -> T.Text
joinMoves section character = T.unlines (formattedSection section character)

-- each section looks like solNormals = [ Move (...) ]
formattedSection :: Section' -> Character -> [T.Text]
formattedSection (Section' (moveType, headers, moveData)) (Character char) =
  "var " <> char <> pack (show moveType) <> " = [" : map formatSingleMove moveData ++ ["];"]

-- movetype is needed to account for differing number of fields
formatSingleMove :: Move -> T.Text
formatSingleMove (Move md) = "[" <> moves <> "],"
  where
    moves = foldr (\a b -> a <> ", " <> b) T.empty ((\(MoveProperty x) -> "\"" <> x <> "\"") <$> md)

arrayLineTemplate :: T.Text -> T.Text -> T.Text
arrayLineTemplate char move = [NI.text|Category.${lowermove}: ${char}${move}|]
  where
    lowermove = T.toLower move

arrayTemplate :: Character -> T.Text -> T.Text
arrayTemplate (Character char) array =
  [NI.text|var ${char}Data = <Category, List<List<String>>>{
  $array
};|]

fileTemplate :: RosterText -> T.Text
fileTemplate (RosterText (MoveText moves) (HeaderText headerFn)) =
  [NI.text|import 'package:data_table_2/data_table_2.dart';
import 'dart:collection';
import 'package:tuple/tuple.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'data_source.dart';
import 'character.dart';

$headerFn

$moves|]

toStrict1 :: BL.ByteString -> BS.ByteString
toStrict1 = BS.concat . BL.toChunks

readCharNetwork :: String -> T.Text -> IO (Maybe RosterMoves')
readCharNetwork url char = do
  info <- get url
  threadDelay 10000
  let thing = info ^. responseBody
  let res = parseByteString (parseFile char) mempty (toStrict1 thing)
  case res of
    (Success a) -> do
      let a' = transformRosterMoves a sizeSpec
      return (Just a')
    (Failure _) -> return Nothing

assignHeaderSize :: HeaderSizeSpec -> Header -> Header'
assignHeaderSize (HeaderSizeSpec hss) (Header origH) = Header' origH columnSize
  where
    -- if it's in the map, use the map value, otherwise Small
    columnSize = case M.lookup (T.toLower origH) hss of
      Just a -> a
      _ -> Large

mkSection' :: HeaderSizeSpec -> Section -> Section'
mkSection' hss (Section (a, b, c)) = Section' (a, map (assignHeaderSize hss) b, c)

mkCharacterMoves' :: HeaderSizeSpec -> CharacterMoves -> CharacterMoves'
mkCharacterMoves' hss (CharacterMoves cm) = CharacterMoves' (map (mkSection' hss) cm)

transformRosterMoves :: RosterMoves -> HeaderSizeSpec -> RosterMoves'
transformRosterMoves (RosterMoves rm) hss = RosterMoves' (M.map (mkCharacterMoves' hss) rm)

sizeSpec :: HeaderSizeSpec
sizeSpec = HeaderSizeSpec $ M.insert "input" Medium M.empty

readCharFile :: String -> T.Text -> IO (Maybe RosterMoves')
readCharFile path char = do
  info <- BS.readFile path
  let res = parseByteString (parseFile char) mempty info
  case res of
    (Success a) -> do
      let a' = transformRosterMoves a sizeSpec
      return (Just a')
    (Failure _) -> return Nothing

foldRosterList :: [RosterMoves'] -> RosterMoves'
foldRosterList = foldr (\(RosterMoves' val) (RosterMoves' acc) -> RosterMoves' (val <> acc)) (RosterMoves' M.empty)

run :: IO ()
run = do
  sol <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Sol_Badguy/Frame_Data" "sol"
  anji <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Anji_Mito/Frame_Data" "anji"
  nagoriyuki <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Nagoriyuki/Frame_Data" "nagoriyuki"
  millia <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Millia_Rage/Frame_Data" "millia"
  chipp <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Chipp_Zanuff/Frame_Data" "chipp"
  ky <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Chipp_Zanuff/Frame_Data" "ky"
  may <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/May/Frame_Data" "may"
  zato <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Zato-1/Frame_Data" "zato"
  ino <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/I-No/Frame_Data" "ino"
  leo <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Leo_Whitefang/Frame_Data" "leo"
  faust <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Faust/Frame_Data" "faust"
  axl <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Axl_Low/Frame_Data" "axl"
  potemkin <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Potemkin/Frame_Data" "potemkin"
  ramlethal <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Ramlethal_Valentine/Frame_Data" "ramlethal"
  giovanna <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Giovanna/Frame_Data" "giovanna"
  goldlewis <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Goldlewis_Dickinson/Frame_Data" "goldlewis"
  jacko <- readCharNetwork "https://www.dustloop.com/wiki/index.php?title=GGST/Jack-O/Frame_Data" "jacko"
  let charList = [sol, anji, nagoriyuki, millia, chipp, ky, may, zato, ino, leo, axl, faust, potemkin, ramlethal, giovanna, goldlewis, jacko]
  let tCharList = sequence charList
  case tCharList of
    Nothing -> print "Download of character data failed"
    (Just a) -> DTIO.writeFile "generated_widgets.dart" (fileTemplate (textFromRosterMoves (foldRosterList a)))
