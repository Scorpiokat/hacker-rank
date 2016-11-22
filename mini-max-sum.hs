import Control.Applicative
import Control.Monad
import System.IO

main :: IO ()
main = do
   int_temp <- getLine
   let integers = map read $ words int_temp :: [Int]
       sortedint = quicksort integers
       s = foldr (+) 0 (init sortedint)
       l = foldr (+) 0 (tail sortedint)
   putStrLn (show s ++ " " ++ show l)
   
quicksort [] = []
quicksort (x:xs) = quicksort small ++ (x : quicksort large)
   where small = [y | y <- xs, y <= x]
         large = [y | y <- xs, y > x]
