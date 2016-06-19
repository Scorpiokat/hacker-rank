import System.IO

main :: IO ()
main = do
    n <- getLine
    arr_temp <- getLine    
    let total = sum $ map read $ words arr_temp
    putStrLn $ show total
