import Control.Applicative
import Control.Monad

import Data.Bits
import Data.Word

main :: IO ()
main = do
  t <- str2Int <$> getLine
  replicateM_ t $ do
    n <- str2Word <$> getLine
    let newn = complement n
    print newn

str2Int = read :: String -> Int
str2Word = read :: String -> Word32
