module Main where

import Control.Monad (forever)
import Data.Char (toLower)
import Data.Maybe (isJust)
import Data.List (intersperse)
import System.Exit (exitSuccess)
import System.Random (randomRIO)

main :: IO ()
main = do
  list <- allWords
  print $ take 10 $ drop 100 list


type WordList = [String]

allWords :: IO WordList
allWords = do
  dict <- readFile "/home/davenpcm/Documents/HaskellProjects/hangman/data/dict.txt"
  return (lines dict)