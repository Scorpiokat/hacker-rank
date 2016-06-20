import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    t_temp <- getLine
    let t = read t_temp :: Int
    if (t >=1) && (t<=20)
      then do 
      forM_ [1..t] $ \a0  -> do
          n_temp <- getLine
          let n = read n_temp :: Int
          if (n>=0) && (n<=60)
            then do
              if n `mod` 2 == 0
                then do
                  let metres = height n
                  print metres
                else do 
                  let metres = 2*height (n-1)
                  print metres
            else do
              putStrLn ("Number of cycles should be more than 0, but less than 60!")
     else do
        putStrLn ("Number of test cases should be more than 1, but less than 20!")    


height :: Int -> Int 
height 0 = 1
height 1 = 2
height a = 2* height (a-2) + 1
