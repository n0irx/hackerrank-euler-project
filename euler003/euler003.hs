import Control.Applicative
import Control.Monad
import System.IO
import Data.Function (fix)

largestPrimeFactor' n d m
    | n > 1 = 1 : largestPrimeFactor (n `div` 2)  (d + 1)
    | d * d > sqrt n = n
    otherwise d

main :: IO ()
main = do
  t <- readLn
  forM_ [1..t] $ \_ -> do
    n <- readLn
    print max (largestPrimeFactor n 2 (-1))
