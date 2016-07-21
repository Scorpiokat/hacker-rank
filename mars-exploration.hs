import Data.List
import Prelude

main :: IO ()
main = do
    s <- getLine
    let s_len = length s :: Int
        k = s_len `div` 3
        s_list = map (:[]) s   
        newstr =  map (:[]) $ duplicate "SOS" k
        answer = function s_list newstr
    putStrLn (show answer)

duplicate _ 0 = []
duplicate xs n = xs ++ duplicate xs (n-1)

flatten :: [[a]] -> [a]         
flatten xs = (\z n -> foldr (\x y -> foldr z y x) n xs) (:) []
    
function [] _ = 0
function _ [] = 0
function (x:xs) (y:ys) 
         | x == y = 0 + function xs ys
         | otherwise = 1 + function xs ys
