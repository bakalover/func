module Main where

import qualified MyLib (someFunc)
import qualified Heh

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  MyLib.someFunc
