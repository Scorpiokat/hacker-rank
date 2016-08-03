
module Main where

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
fib n = fibs !! (n-1)

main = do
    input <- getLine
    print . fib . (read :: String -> Int) $ input
