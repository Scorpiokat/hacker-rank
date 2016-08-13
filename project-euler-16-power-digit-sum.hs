import Control.Applicative
import Control.Monad
import Data.Char (digitToInt)

main :: IO ()
main = do
 t <- (read :: String -> Int) <$> getLine
 forM_ [1..t] $ \a0 -> do
  n <- (read :: String -> Integer) <$> getLine
  let a = 2^n
      answer = sum $ map digitToInt (show a)
  putStrLn (show answer)
