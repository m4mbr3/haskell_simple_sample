module Main where

main = do if mylength [1,2,3,4] == 4
             then putStrLn "Ok"
             else putStrLn "No"

mylength :: [a] -> Integer
mylength (x:xs) = 1 + mylength xs
mylength [] = 0
