import Control.Applicative
import Control.Monad
import System.IO


main :: IO ()
main = do
    n_temp <- getLine
    let n_t = words n_temp
    let n = read $ n_t!!0 :: Int  -- length of freeway
    let t = read $ n_t!!1 :: Int  -- number of test cases
    width_temp <- getLine -- width array
    let width = map read $ words width_temp :: [Int]
    forM_ [1..t] $ \a0  -> do
        i_temp <- getLine
        let i_t = words i_temp
            i = read $ i_t!!0 :: Int -- index of the segment through which Calvin enters the service lane
            j = read $ i_t!!1 :: Int -- index of the lane segment through which he exits
            lane = minimum $ take (j-i+1) $ drop i width
        putStrLn (show lane)
