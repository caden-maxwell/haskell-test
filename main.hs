module Main (main) where

import System.Directory

main :: IO ()
main = do
	contents <- listDirectory "src"
	putStrLn (show contents)


