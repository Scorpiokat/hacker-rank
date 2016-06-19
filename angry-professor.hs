import Control.Applicative
import Control.Monad
import System.IO

main :: IO ()
main = do
    t_temp <- getLine
    let t = read t_temp :: Int
    if (t>=1) && (t<=10)
      then do
        forM_ [1..t] $ \a0  -> do
    
          n_temp <- getLine
          let n = read $ words n_temp!!0 :: Int
          if (n>=1) && (n<=1000)
            then do
              let k = read $ words n_temp!!1 :: Int
              if (k>=1) && (k<=n)
                then do
                  time_temp <- getLine    
                  let time = map read $ words time_temp :: [Int]
                      more_time = length $ filter (>=100) time
                      less_time = length $ filter (<=(-100)) time
                  if (more_time >0) 
                    then do
                      putStrLn ("Times are not within the specified constraint!")
                    else do
                      if (less_time >0)
                        then do 
                          putStrLn ("Times are not within the specified constraint!")
                        else do
                          let late = length $ filter (>0) time
                          if  late > n-k
                            then do
                              putStrLn ("YES")
                            else do
                              putStrLn ("NO")
               else do
                  putStrLn ("Value of threshold is not within the specified constraint!")
            else do
              putStrLn ("Number of students is not within the specified constraint!")
      else do
        putStrLn ("Number of test cases is not within the specified constraint!")
