module Pamil.List.MyButLast where

-- P02: Find the last but one element of a list.

myButLast :: [a] -> a
myButLast [] = error "Cannot get the last but one element of an empty list!"
myButLast (_:[]) = error "Cannot get the last but one element of a list with only one element!"
myButLast (x:_:[]) = x
myButLast (_:xs) = myButLast xs
