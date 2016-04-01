import Data.Char
import System.Environment

fib n = if n == 0 || n == 1
            then 1
            else fib (n-1) + fib (n-2)

main :: IO()
main = do
    putStrLn (show (fib 30))

