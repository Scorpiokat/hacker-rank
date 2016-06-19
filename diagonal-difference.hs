import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    a_temp <- getMultipleLines n
    let a = map ( map ( read :: String -> Int ) . words ) a_temp
    diag1 <- diagonal1 a
    diag2 <- diagonal2 a
    let diff = abs (sum diag1 - sum diag2)
    print diff
    

getMultipleLines :: Int -> IO [String]

getMultipleLines n
    | n <= 0 = return []
    | otherwise = do          
        x <- getLine         
        xs <- getMultipleLines (n-1)    
        let ret = (x:xs)    
        return ret  

diagonal1 a
    | a==[] = return []
    | otherwise = do
        let diag1 = zipWith (!!) a [0..]
        return diag1
       
diagonal2 a
    | a==[] = return []
    | otherwise = do
        let b = reverse a
        let diag2 = zipWith (!!) b [0..]
        return diag2
