import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    image n 1
    
image x k
    | x<=0 = putStr ""
    | otherwise = do
           let spaces = replicate (x-1) ' '
               hashes = replicate k '#'
           putStr spaces
           putStrLn hashes
           image (x-1) (k+1)
