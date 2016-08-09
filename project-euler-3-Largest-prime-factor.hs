import Control.Applicative
import Control.Monad

main :: IO ()
main = do
 t <- (read :: String -> Int) <$> getLine
 forM_ [1..t] $ \a0 -> do
  n <- (read :: String -> Integer) <$> getLine
  let answer = last (primef n)
  putStrLn (show answer)
  
primes :: [Integer]
primes = 2 : filter (null . tail . primef) [3,5..]

primef m = factors m primes
 where factors m (x:xs) 
        | x*x > m        = [m]
        | m `mod` x == 0 = x : factors (m `div` x) (x:xs)
        | otherwise      =     factors m xs
