module Pamil.List.MyLength where

-- P04: Find the number of elements of a list.

myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs

myLength' :: [a] -> Int
myLength' = foldr (\_ -> (+1)) 0