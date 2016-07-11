module Pamil.List where

-- P01: Find the last element of a list.

myLast :: [a] -> a
myLast [] = error "Cannot get the last element of an empty list!"
myLast [x] = x
myLast (_:xs) = myLast xs

-- P02: Find the last but one element of a list.

myButLast :: [a] -> a
myButLast [] = error "Cannot get the last but one element of an empty list!"
myButLast (_:[]) = error "Cannot get the last but one element of a list with only one element!"
myButLast (x:_:[]) = x
myButLast (_:xs) = myButLast xs

-- P03: Find the K'th element of a list. The first element in the list is number 1.

elementAt :: [a] -> Int -> a
elementAt a b = a !! (b - 1)

-- P04: Find the number of elements of a list.

myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs
