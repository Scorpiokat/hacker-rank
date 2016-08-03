import Control.Applicative
import Control.Monad

main :: IO ()
main = do
 t <- (read :: String -> Int) <$> getLine
 forM_ [1..t] $ \a0 -> do
   s <- getLine
   let l = length s
   --print l
   forM_ [1..l] $ \b0 -> do
    let answer = (drop b0 s) ++ (take b0 s) ++ " "
    putStr answer
   putStr ("\n")
