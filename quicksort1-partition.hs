import Data.List

main = do
  count <- fmap changetype getLine
  numbers <- fmap (map changetype . words) getLine
  putStrLn $ intercalate " " $ map show $ qsPart numbers

changetype = read :: String -> Int
 
qsPart :: [Int] -> [Int]
qsPart (x:xs) = [s | s <- xs, s < x] ++ [x] ++ [s | s <- xs, s >= x]
