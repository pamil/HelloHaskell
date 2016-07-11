module Pamil.List where

-- P01: Find the last element of a list.

myLast :: [a] -> a
myLast [] = error "Cannot get the last element of an empty list!"
myLast [x] = x
myLast (_:xs) = myLast xs
