import Control.Applicative
import Control.Monad

main :: IO ()
main = do
 t <- (read :: String -> Int) <$> getLine
 forM_ [1..t] $ \a0 -> do
  n <- (read :: String -> Integer) <$> getLine
  let list = sum [ x | x <- takeWhile (< n) evenFibs]
  putStrLn (show list)

evenFibs = 2 : 8 : zipWith (+) (map (4*) (tail evenFibs)) evenFibs
