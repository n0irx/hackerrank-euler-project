import Control.Applicative
import Control.Monad
import System.IO

main :: IO ()
main = do
  t_temp <- getLine
  let t = read t_temp :: Int
  forM_ [1 .. t] $ \a0 -> do
    n_temp <- getLine
    let n = read n_temp :: Int in print $ sum' 3 n + sum' 5 n - sum' 15 n

sum' :: Integral a => a -> a -> a
sum' b n = b * (n' * (n' + 1)) `div` 2
  where
    n' = (n - 1) `div` b

getMultipleLines :: Int -> IO [String]
getMultipleLines n
  | n <= 0 = return []
  | otherwise = do
    x <- getLine
    xs <- getMultipleLines (n -1)
    let ret = (x : xs)
    return ret
