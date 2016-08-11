import Control.Applicative
import Control.Monad
import Data.Char (digitToInt)

main :: IO ()
main = do
 t <- (read :: String -> Integer) <$> getLine
 forM_ [1..t] $ \a0 -> do
  first <- getLine
  let n_k = map read $ words first :: [Int]
      n = n_k !! 0
      k = n_k !! 1
  number <- getLine
  let list = map digitToInt number 
      list2 = maximum $ take (n-k) (function k list)
  putStrLn (show list2)

function :: Int -> [Int] -> [Int]
function _ [] = []
function p (x:xs) = product (take p (x:xs)) : function p xs
