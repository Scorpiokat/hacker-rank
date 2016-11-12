import Control.Applicative
import System.IO

main :: IO ()
main = do
    n_temp <- getLine
    let n = read $ n_temp :: Int
    print (likelist n)

likelist :: Int -> Int
likelist 0 = 0
likelist n = foldl (+) 0 ((take n) $ list)
    where list = 2 : map iter list
          iter x = div (x * 3) 2
