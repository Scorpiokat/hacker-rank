import Control.Applicative
import Control.Monad
import System.IO

main :: IO ()
main = do
    t_temp <- getLine -- number of test cases
    let t = read t_temp :: Int
    if t>=1 && t<=100
      then do
        forM_ [1..t] $ \a0  -> do
            ab <- getLine
            let a_b = words ab
                a = read $ a_b!!0 :: Int
                b = read $ a_b!!1 :: Int
            if a>=1 && a<=1000000000 && a<=b && b>=1 && b<=1000000000
              then do
                let aa = sqrt (fromIntegral  a)
                    bb = sqrt (fromIntegral  b)
                    dd = floor bb - ceiling aa + 1
                putStrLn (show dd)
              else do
            putStrLn ("A and B are not within a scope")
    else
      putStrLn ("Number of cases should be from 1 to 100!")
