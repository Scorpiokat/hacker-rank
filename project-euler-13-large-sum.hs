import Control.Applicative
import Control.Monad

main :: IO ()
main = do
 getLine
 a <- getContents
 let ls = map read $ lines a :: [Integer] 
     p = take 10 $ show $ sum ls
 putStrLn p
