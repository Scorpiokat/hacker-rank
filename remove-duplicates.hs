import Data.List

main :: IO ()
main = do
 line <- getLine
 let answer = nub $ line
 putStr answer
