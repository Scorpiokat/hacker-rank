import Control.Applicative
import Control.Monad
import Data.List

main :: IO ()
main = do
 t <- (read :: String -> Int) <$> getLine
 forM_ [1..t] $ \a0 -> do
  n <- (read :: String -> Integer) <$> getLine
  let a = (n-1) `div` 3
      b = (n-1) `div` 5
      c = (n-1) `div` 15
      answer = (3 * a * (a+1) + 5 * b * (b+1) - 15 * c * (c+1)) `div` 2
  putStrLn (show answer)
