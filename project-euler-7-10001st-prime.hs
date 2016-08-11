import Control.Applicative
import Control.Monad

main :: IO ()
main = do
 t <- (read :: String -> Int) <$> getLine
 forM_ [1..t] $ \a0 -> do
  n <- (read :: String -> Int) <$> getLine
  let answer = (sieve [2 .. ]) !! (n-1)
  putStrLn (show answer)
  
sieve :: [Int] -> [Int]  
sieve [] = []
sieve (p:xs) = p : sieve (filter (\ x -> x `mod` p /= 0) xs)
