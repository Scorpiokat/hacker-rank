import Control.Applicative
import Control.Monad
import qualified Data.Set as S

main :: IO ()
main = do
  t <- (read :: String -> Int) <$> getLine
  replicateM_ t $ do
     a <- getLine
     b <- getLine
     putStrLn $ if function a b
                 then "YES"
                 else "NO"

function :: String -> String -> Bool
function a b = not $ S.null $ S.intersection (S.fromList a) (S.fromList b)
