import Data.List
import Data.Char

main :: IO ()
main = do
    t <- getLine -- sample sentence
    let len = length $ nub $ map toLower $ filter isAlpha t
    if len == 26 then do putStrLn ("pangram")
                 else do putStrLn ("not pangram")
