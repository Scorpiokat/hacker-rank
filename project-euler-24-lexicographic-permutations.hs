import Control.Applicative
import Control.Monad
import Data.List

main :: IO ()
main = do
 t <- (read :: String -> Int) <$> getLine
 forM_ [1..t] $ \a0 -> do
  n <- (read :: String -> Int) <$> getLine
  let answer = perms "abcdefghijklm" (n-1)
  putStrLn answer
  
fac 0 = 1
fac n = n * fac (n - 1)

perms [] _= []
perms xs n = x : perms (delete x xs) (mod n m)
  where m = fac $ length xs - 1
        y = div n m
        x = xs!!y
 
