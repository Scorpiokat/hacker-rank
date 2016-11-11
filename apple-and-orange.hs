import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    s_temp <- getLine
    let s_t = words s_temp
        s = read $ s_t!!0 :: Int -- start point of Sam's house
        t = read $ s_t!!1 :: Int -- end point of Sam's house
        
    a_temp <- getLine
    let a_t = words a_temp
        a = read $ a_t!!0 :: Int -- apple tree point
        b = read $ a_t!!1 :: Int -- orange tree point
    
    m_temp <- getLine
    let m_t = words m_temp
        m = read $ m_t!!0 :: Int -- number of apples
        n = read $ m_t!!1 :: Int -- number of oranges
    
    apple_temp <- getLine
    let distApple = map read $ words apple_temp :: [Int] -- distance of fallen apples
    
    orange_temp <- getLine
    let distOrange = map read $ words orange_temp :: [Int] -- distance of fallen oranges
    
    let numApples = check a distApple s t
    putStrLn (show numApples)
    
    let numOranges = check b distOrange s t
    putStrLn (show numOranges)

check :: Int -> [Int] -> Int -> Int -> Int
check _ [] _ _ = 0
check a (d:ds) s t  
    |(a+d)>=s && (a+d)<=t = 1 + check a ds s t
    |otherwise = check a ds s t

