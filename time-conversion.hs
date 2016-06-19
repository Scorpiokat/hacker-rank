import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    time <- getLine
    newtime time
   
newtime x
    | x == " " = putStr ""
    | otherwise = do
        let hours = take 2 x
            pmam = drop 8 x
            whtime = take 8 x
            timewohours = drop 2 whtime
            
        if pmam == "AM" 
            then do
               if hours == "12"
               
                then do
                 let newhours = "00"
                 putStr (newhours ++ timewohours)
                 
                else do  
                 putStr whtime
            
            else do
               if hours == "12"
                 
                 then do
                  putStr (hours ++ timewohours)
                 
                 else do
                  let  newhours = show (read hours + 12)
                  putStr (newhours ++ timewohours)
