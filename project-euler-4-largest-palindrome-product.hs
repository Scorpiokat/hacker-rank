import Control.Applicative
import Control.Monad
import Data.List

main :: IO ()
main = do
 t <- (read :: String -> Int) <$> getLine
 forM_ [1..t] $ \a0 -> do
  n <- (read :: String -> Integer) <$> getLine 
  let palindrome = maximum [c | a<-[100..999],  b <- [a..999], let c = a*b, let test = show c, c<n, test == reverse test]
  putStrLn (show palindrome)
