import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    d1_temp <- getLine
    let d1_t = words d1_temp
    let d1 = read $ d1_t!!0 :: Int
    let m1 = read $ d1_t!!1 :: Int
    let y1 = read $ d1_t!!2 :: Int
    d2_temp <- getLine
    let d2_t = words d2_temp
    let d2 = read $ d2_t!!0 :: Int
    let m2 = read $ d2_t!!1 :: Int
    let y2 = read $ d2_t!!2 :: Int
    
    if y2 == y1
      then do
       
       if m2 == m1
         then do
           if d2 >= d1
             then do
               let fine = 0
               putStrLn (show fine) 
             else do
              let fine = 15 * (d1 - d2)
              putStrLn (show fine) 
        else do
          if m1 > m2
            then do
              let fine = 500 * (m1 - m2)
              putStrLn (show fine)
            else do
              let fine = 0
              putStrLn (show fine)
      else do
        if y1 > y2
          then do
            let fine = 10000
            putStrLn (show fine)
          else do
            let fine = 0
            putStrLn (show fine)
