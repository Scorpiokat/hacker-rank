import Control.Applicative
import Control.Monad
import System.IO

main :: IO ()
main = do
    t_temp <- getLine
    let t = read t_temp :: Int
    forM_ [1..t] $ \a0  -> do
        n_temp <- getLine
        let n = read n_temp :: Int
            digits = digs n
            answer = func n digits
            len = foldr (+) 0 answer
        putStrLn (show len)
        
digs :: Integral x => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]
   
func :: Int -> [Int] -> [Int]
func _ [] = []
func n (x:xs)
   | x == 0 = 0 : func n xs
   | n `mod` x == 0 = 1 : func n xs
   | otherwise = 0 : func n xs
