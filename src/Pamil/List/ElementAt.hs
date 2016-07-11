module Pamil.List.ElementAt where

-- P03: Find the K'th element of a list. The first element in the list is number 1.

elementAt :: [a] -> Int -> a
elementAt a b = a !! (b - 1)
