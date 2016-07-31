import Data.List
import Control.Monad

main :: IO ()
main = do
 n <- getLine
 line <- fmap (map str2Int . words) getLine
 let nub_line = nub line
 
 forM_ nub_line $ \a0 -> do
  let filt_list = filter (== a0) $ line
  if length filt_list == 1 
      then do putStr (show a0 ++ " ") 
      else do putStr ("")

str2Int = read :: String -> Int



