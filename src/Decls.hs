{-# LANGUAGE OverloadedStrings #-}

module Decls where

import Data.Map (Map)
import qualified Data.Map as M
import Data.Text (pack)
import qualified Data.Text as T
import Text.Trifecta
import qualified Text.Trifecta as TT

data ParsedEntity = AChar Char | AMove [MoveProperty] | END

newtype Header = Header T.Text deriving (Eq, Ord, Show)
newtype MoveProperty = MoveProperty T.Text deriving (Eq, Ord, Show)
data MoveType = Normals | Specials | Supers deriving (Eq, Ord, Show, Enum)
newtype CharacterMoves = CharacterMoves [Section] deriving (Eq, Show, Ord)
newtype RosterMoves = RosterMoves (Map Character CharacterMoves) deriving (Eq, Show, Ord)
newtype Section = Section (MoveType, [Header], [Move]) deriving (Eq, Show, Ord)
newtype Character = Character T.Text deriving (Eq, Ord, Show)
newtype Move = Move [MoveProperty] deriving (Eq, Ord, Show)

data Header' = Header' T.Text ColumnSize deriving (Eq, Ord, Show)
newtype Section' = Section' (MoveType, [Header'], [Move]) deriving (Eq, Show)
newtype RosterMoves' = RosterMoves' (Map Character CharacterMoves')
newtype CharacterMoves' = CharacterMoves' [Section'] deriving (Eq, Show)
newtype HeaderSizeSpec = HeaderSizeSpec (Map T.Text ColumnSize)
data ColumnSize = Small | Medium | Large deriving (Eq, Ord, Show, Enum)

newtype MoveText = MoveText T.Text deriving (Eq, Ord, Show)
newtype HeaderText = HeaderText T.Text deriving (Eq, Ord, Show)
data RosterText = RosterText MoveText HeaderText deriving (Eq, Ord, Show)
