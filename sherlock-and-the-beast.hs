import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    t_temp <- getLine
    let t = read t_temp :: Int
    if (t>=1) && (t<=20) then
      forM_ [1..t] $ \a0  -> do
          n_temp <- getLine
          let n = read n_temp :: Int
          if (n>=1) && (n<100000)
            then do
              let a = n `div` 3
              let b = n `mod` 3
            
              if b == 0
                then do
                  let strnum = replicate n 5
                  print_list strnum
                else do 
                  if b == 2 && n>=5
                    then do 
                      let strnum1 = replicate (3*(a-1)) 5 ++ replicate 5 3
                      print_list strnum1
                    else do
                      if b == 1 && n>=10
                        then do
                          let strnum2 = replicate (3*(a-3)) 5 ++ replicate 10 3
                          print_list strnum2
                        else do
                          putStrLn "-1"
            else do
              putStrLn "Number of digits in a number should be from 1 to 100000"
    else do
      putStrLn "Number of cases should be from 1 to 20!"
      
print_list xs = do putStrLn (join xs)
     where join [] = ""
           join (x:xs) = (show x) ++ join xs 
