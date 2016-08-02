import Control.Applicative
import Control.Monad

main :: IO ()
main = do
  t <- str2Int <$> getLine
  forM_ [1..t] $ \a0 -> do
    n <- str2Int <$> getLine
    if n `mod` 7 > 1 then do putStrLn ("First")
                     else do putStrLn ("Second")
  
str2Int = read :: String -> Int
