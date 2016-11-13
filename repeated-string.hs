import Control.Applicative

main :: IO ()
main = do
    s <- getLine
    n_temp <- getLine
    let n = read n_temp :: Int
        l = length s  -- length of the first string
        t = (n `div` l) -- checking how many full strings s does n contain
        m = (n `mod` l) -- checking whether anything is left after taking out t s-strings
        aInS = length.filter (=='a') $ s -- how many 'a's does s contain
        d = n `rem` l -- checking how many letters is left after taking all full s-strings
        delta = length.filter (=='a') $ take d $ s -- how many more a-letters will n contain, besides t s-string
        z = answer m aInS t delta
    print z

answer :: Int -> Int -> Int -> Int -> Int
answer m aInS t delta
  |m == 0 = aInS * t
  |otherwise = aInS * t + delta
