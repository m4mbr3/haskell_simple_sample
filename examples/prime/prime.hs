module Main where

--main = do putStrLn "What is 2 +2?"
--          x <- readLn
--            if x == 4
--                then putStrLn "You're right!"
--                else putStrLn "You're wrong!"
getInteger ::  IO Integer
getInteger = readLn

main = do putStrLn "Which is your prime number prefered?"
          x <- getInteger
          if is_prime x 1 == 0
             then putStrLn "Nice one, man!"
             else putStrLn "It is not prime!"

is_prime :: Integer -> Integer -> Integer
is_prime x 1 = if is_prime x 2 /= 0
                  then 1
                  else 0

is_prime x n = if mod x n  == 0
                  then 1
                  else if n <  div x 2
                          then is_prime x (n+1)
                          else 0
