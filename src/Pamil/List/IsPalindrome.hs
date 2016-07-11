module Pamil.List.IsPalindrome where

-- P06: Find out whether a list is a palindrome.

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == reverse xs
