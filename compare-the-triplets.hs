import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    a_temp <- getLine
    let a = map read $ words a_temp :: [Int]
    b_temp <- getLine
    let b = map read $ words b_temp :: [Int]
        c = comparing a b
        alice = length $ filter (==1) c
        bob = length $ filter (==2) c   
    putStrLn (show alice ++ " " ++ show bob)
    
    
comparing :: [Int] -> [Int] -> [Int]
comparing [] _ = []
comparing _ [] = []
comparing (x:xs) (y:ys)
   |x>y = 1 : comparing xs ys
   |x<y = 2 : comparing xs ys
   |otherwise = comparing xs ys


