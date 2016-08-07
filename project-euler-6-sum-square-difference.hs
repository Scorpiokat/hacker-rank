import Control.Applicative
import Control.Monad

main :: IO ()
main = do
 t <- (read :: String -> Int) <$> getLine
 forM_ [1..t] $ \a0 -> do
  n <- (read :: String -> Int) <$> getLine
  let line = [1..n]
      line2 = square line
      answer = (sum line)^2 - sum line2 
  putStrLn (show answer)
  
square :: [Int] -> [Int]
square [] = []
square (x:xs) = (x^2) : square xs
