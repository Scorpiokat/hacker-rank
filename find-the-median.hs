import System.IO

main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    ar_temp <- getLine
    let ar = map read $ words ar_temp :: [Int]
        sort_arr = quicksort ar
        index = n `div` 2
        
    if odd n 
      then do
        let answer = sort_arr !! index
        putStrLn (show answer)
      else do
        let a = sort_arr !! index
            b = sort_arr !! (index +1)
            answer = (a + b) `div` 2
        putStrLn (show answer)
        

quicksort [] = []
quicksort (x:xs) = quicksort small ++ (x : quicksort large)
   where small = [y | y <- xs, y <= x]
         large = [y | y <- xs, y > x]
