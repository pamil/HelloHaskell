module Pamil.List.MyReverse where

-- P05: Reverse a list.

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]
