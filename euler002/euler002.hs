import Control.Monad
import Data.Function (fix)

memoize :: (Int -> a) -> (Int -> a)
memoize f = (map f [0 ..] !!)

fib :: (Int -> Integer) -> Int -> Integer
fib _ 0 = 0
fib _ 1 = 1
fib f n = f (n - 1) + f (n - 2)

fibMemo :: Int -> Integer
fibMemo = fix (memoize . fib)

main :: IO ()
main = do
  t <- readLn
  forM_ [1 .. t] $ \_ -> do
    n <- readLn
    print . sum . filter even . takeWhile (<= n) $ map fibMemo [1 ..]
