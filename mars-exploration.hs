import Data.List

main :: IO ()
main = do
    s <- getLine
    let s_len = length s :: Int
        k = s_len `div` 3
        rightstr = duplicate "SOS" k
        common = intersect s rightstr
        diff = s_len - length common
    putStrLn (show diff)

duplicate _ 0 = []
duplicate xs n = xs ++ duplicate xs (n-1)
