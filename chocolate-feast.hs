import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    t_temp <- getLine
    let t = read t_temp :: Int
    if (t>=1) && (t<=1000)
    then do
     forM_ [1..t] $ \a0  -> do
        n_temp <- getLine
        let n_t = words n_temp
            n = read $ n_t!!0 :: Int
            c = read $ n_t!!1 :: Int
            m = read $ n_t!!2 :: Int
            q = n `div` c  -- chocolates bought with money = wrappers from chocolates
         --   ex = q `div` m -- chocolates bought with wrappers
           
        if (n>=2) && (n<=100000) 
         then do
          if (c>=1) && (c<=n) 
            then do
              if (m>=2) && (m<=n)
                then do
                  if q>=m 
                    then do
                      let e = q `div `m
                      let choco = q + func q m + e + func e m + func (e `div` m) m
                      putStrLn (show choco)
                    else do
                      let choco = q
                      putStrLn (show choco)
                    
                              
               else do
                 putStrLn ("M is not in scope")
            else do
             putStrLn ("C is not in scope")
        else do
         putStrLn ("N is not in scope")
    else do
     putStrLn ("T is not in scope")
    
func :: Int -> Int -> Int
func a b = (a `div` b + a `mod` b) `div` b 
