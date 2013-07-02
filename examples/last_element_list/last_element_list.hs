module Main where
import Control.Monad

main = do if  mylast ['a','b','c','d','v','z'] == 'z'
              then putStrLn "OK"
              else putStrLn "FuCk"
mylast :: [a] -> a
mylast (x:xs) = if null xs
                   then x
                   else mylast xs
