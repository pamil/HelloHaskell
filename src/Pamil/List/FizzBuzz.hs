module Pamil.List.FizzBuzz where

-- Fizz Buzz!

fizzBuzz :: Integer -> String
fizzBuzz n
    | n `mod` 15 == 0 = "FizzBuzz"
    | n `mod` 5  == 0 = "Buzz"
    | n `mod` 3  == 0 = "Fizz"
    | otherwise       = show n
