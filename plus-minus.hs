import Control.Applicative
import Control.Monad
import System.IO
import Data.Function


main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    arr_temp <- getLine
    let arr = map read $ words arr_temp :: [Int]
        arr1 = [x | x <- arr, x>0]
        poslen = length arr1
        posdecimal = foo poslen n
    print posdecimal
    
    let arr2 = [x | x <- arr, x<0]
        neglen = length arr2
        negdecimal = foo neglen n
    print negdecimal
    
    let zerolen = n - poslen - neglen
        zerodecimal = foo zerolen n
    print zerodecimal

getMultipleLines :: Int -> IO [String]

getMultipleLines n
    | n <= 0 = return []
    | otherwise = do          
        x <- getLine         
        xs <- getMultipleLines (n-1)    
        let ret = (x:xs)    
        return ret 

foo :: Int -> Int -> Float
foo a b = (fromIntegral a) / (fromIntegral b)
