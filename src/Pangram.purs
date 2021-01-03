module Pangram
  ( isPangram
  ) where

import Prelude

import Data.Array (filter)
import Data.Char (toCharCode)
import Data.Set (fromFoldable, size)
import Data.String.CodeUnits (toCharArray)
import Data.String.Common (toLower)

isNonASCII :: Int -> Boolean
isNonASCII i = ((i > 96 && i < 123))

isPangram :: String -> Boolean
isPangram = toLower
            >>> toCharArray
            >>> (map toCharCode)
            >>> (filter isNonASCII)
            >>> fromFoldable
            >>> size
            >>> (==) 26
