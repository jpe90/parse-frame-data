{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
module Parsers where

import qualified Data.Map as M
import Decls
import Text.Parser.Token (TokenParsing (token))
import Text.Trifecta
import qualified Text.Trifecta as TT
import Control.Applicative ((<|>))
import qualified NeatInterpolation as NI
import NeatInterpolation
import qualified Data.Text as T
import Text.RawString.QQ

individualMove :: Parser MoveProperty
individualMove = try (parseInnerBracket MoveProperty "td") <?> "tried parseInnerBracket td"

headerList :: Parser [Header]
headerList = some (token $ try (parseInnerBracket Header "th") <?> "tried header parse")

notWhitespace :: Parser [Char]
notWhitespace = some (noneOf [' ', '\n', '\t'])

parseCharacter :: T.Text -> Parser RosterMoves
parseCharacter charName = do
  normals <- sectionParser Normals "Normal_Moves"
  specials <- sectionParser Specials "Special_Moves"
  supers <- sectionParser Supers "Supers"
  let charRoster = RosterMoves charMap
        where
          charMap = M.insert (Character charName) charMoves M.empty
            where
              charMoves = CharacterMoves [normals, specials, supers]
  return charRoster

parseFile :: T.Text -> Parser RosterMoves
parseFile charName = do
  normals <- sectionParser Normals "Normal_Moves"
  specials <- sectionParser Specials "Special_Moves"
  supers <- sectionParser Supers "Supers"
  let solRoster = RosterMoves solMap
        where
          solMap = M.insert (Character charName) solMoves M.empty
            where
              solMoves = CharacterMoves [normals, specials, supers]
  return solRoster

movesParser :: Parser b -> Parser [Move]
movesParser stop = do
  parsed <- AMove <$> some (token individualMove) <|> END <$ (try stop <?> "tried stop") <|> AChar <$> anyChar
  case parsed of
    AMove m -> do
      rest <- movesParser stop
      pure $ Move m : rest
    AChar _ -> movesParser stop
    END -> pure []

sectionParser :: MoveType -> T.Text -> Parser Section
sectionParser mt ms = do
  manyTill anyChar (TT.text [NI.text|id="$ms"|]) >> notWhitespace
  manyTill anyChar (Text.Trifecta.text "<th class") >> token notWhitespace
  headers <- headerList
  moves <- movesParser (string "</tbody>")
  let section = Section (mt, headers, moves)
  return section

parseTag :: Parser a -> T.Text -> Parser a
parseTag parser tag = TT.text ("<" <> tag <> ">") *> parser <* TT.text ("</" <> tag <> ">")

parseInnerBracket :: (T.Text -> b) -> T.Text -> Parser b
parseInnerBracket fn = parseTag (fn <$> (T.pack <$> many (notChar '<')))
