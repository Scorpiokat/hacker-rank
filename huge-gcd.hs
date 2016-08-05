import Control.Monad

main = do
  getLine
  a <- liftM (map read . words) getLine :: IO [Integer]
  getLine
  b <- liftM (map read . words) getLine :: IO [Integer]
  let answer = gcd (product a) (product b) `mod` 1000000007
  print answer
