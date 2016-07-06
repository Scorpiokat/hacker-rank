import Control.Applicative
import Control.Monad
import System.IO

import Data.Maybe
import Data.List


main :: IO ()
main = do
    t_temp <- getLine  -- number of test cases
    let t = read t_temp :: Int
    forM_ [1..t] $ \a0  -> do
      m_temp <- getLine  -- sum  in dollars
      let m = read m_temp :: Int
      n <- getLine   -- number of flavours
      prices <- getLine  -- prices of each flavour
      
      let c = map read $ words prices :: [Int]
          pairs = combinations 2 c
          sums = map sum pairs
          first = (pairs !! (fromJust $ elemIndex m sums))!!0
          second = (pairs !! (fromJust $ elemIndex m sums))!!1
          f = (fromJust $ elemIndex first c) + 1
      
      if first == second 
       then do
        let w = delete first c
            s = (fromJust $ elemIndex second w) + 2
        if f > s then putStrLn (show s ++ " " ++ show f)
                 else putStrLn (show f ++ " " ++ show s)
       else do
        let s = (fromJust $ elemIndex second c) + 1
        if f > s then putStrLn (show s ++ " " ++ show f)
                 else putStrLn (show f ++ " " ++ show s)
        

combinations :: Int -> [a] -> [[a]]
combinations 0 _ = [[]]
combinations _ [] = []
combinations n (x:xs) = (map (x:) (combinations (n-1) xs)) ++ (combinations n xs)
 
