import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    t_temp <- getLine
    let t = read t_temp :: Int
    forM_ [1..t] $ \a0  -> do
        b_temp <- getLine
        let b_t = words b_temp
        let b = read $ b_t!!0 :: Int
        let w = read $ b_t!!1 :: Int
        x_temp <- getLine
        let x_t = words x_temp
        let x = read $ x_t!!0 :: Int
        let y = read $ x_t!!1 :: Int
        let z = read $ x_t!!2 :: Int
        
        if y + z < x 
          then do 
            if x + z < y 
              then do 
                let total = b * (y + z) + w * (x + z)
                putStrLn (show total)
              else do 
                let total = b * (y + z) + w * y
                putStrLn (show total)
          else do 
            if x + z < y 
              then do 
                let total = b * x + w * (x + z)
                putStrLn (show total)
              else do 
                let total = b * x + w * y
                putStrLn (show total)
