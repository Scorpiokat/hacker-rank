import Control.Applicative
import Control.Monad
import System.IO

main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    arr_temp <- getLine
    let arr = map read $ words arr_temp :: [Int]
        arr1 = quicksort arr
        len1 = length arr1
        group1 = group' arr1

    putStrLn (show len1)   
    
    forM_ [1..(length group1-1)] $ \a0 -> do
     let group2 = drop a0 group1
         len = length $ flatten group2
     putStrLn (show len)
 
quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (p:xs) = (quicksort lesser) ++ [p] ++ (quicksort greater)
    where
        lesser  = filter (< p) xs
        greater = filter (>= p) xs

flatten xss = do xs <- xss
                 x <- xs
                 return x
                 
group' :: (Eq a) => [a] -> [[a]]
group' []     = []
group' (x:xs) = (x : takeWhile (== x) xs) : group' (dropWhile (== x) xs)
