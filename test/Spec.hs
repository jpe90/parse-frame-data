{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}

import Control.Applicative ((<|>))
import Data.Map (Map)
import qualified Data.Map as M
import Data.Text
import Lib
import Test.Hspec
import Text.RawString.QQ
import Text.Trifecta

maybeSuccess :: Result a -> Maybe a
maybeSuccess (Success a) = Just a
maybeSuccess _ = Nothing

betweenTagsInput :: [Char]
betweenTagsInput = [r|<th>test</th>|]

moveInput :: [Char]
moveInput = [r|<td>test</td>|]

emptyInput :: [Char]
emptyInput = [r|<td></td>|]

moveData1 :: MoveProperty
moveData1 = MoveProperty "My Move 1"

moveData2 :: MoveProperty
moveData2 = MoveProperty "My Move 2"

moveData3 :: MoveProperty
moveData3 = MoveProperty "My Move 3"

moveData4 :: MoveProperty
moveData4 = MoveProperty "My Move 4"

header1 :: Header
header1 = Header "Sample Header 1"

header2 :: Header
header2 = Header "Sample Header 2"

testHeaderList :: [Header]
testHeaderList = [header1, header2]

moveList :: [Move]
moveList = [Move [moveData1, moveData2], Move [moveData3, moveData4]]

section :: Section
section = Section (Normal, testHeaderList, moveList)

characterMoves :: CharacterMoves
characterMoves = CharacterMoves [section]

character :: Character
character = Character "sol"

rosterMoves :: RosterMoves
rosterMoves = RosterMoves (M.insert character characterMoves M.empty)

main :: IO ()
main = hspec $ do
  it "parseInnerBracket" $ do
    let m' = parseString (parseInnerBracket Header "th") mempty betweenTagsInput
        r' = maybeSuccess m'
    r' `shouldBe` Just (Header "test")
  it "format single move" $ do
    let fm = formatSingleMove (moveList !! 0)
    fm `shouldBe` "Move(\"My Move 1\", \"My Move 2\", ),"
    let tfm = textFromRosterMoves rosterMoves
    print tfm
    1 `shouldBe` 1

