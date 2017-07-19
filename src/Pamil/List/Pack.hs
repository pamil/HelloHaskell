module Pamil.List.Pack where

-- P09: Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

pack :: (Eq a) => [a] -> [[a]]
pack [] = []
pack (x:xs) = foldr f [] (x:xs)
        where f x [] = [[x]]
              f x (y:xs) = if x == (head y) then ((x:y):xs) else ([x]:y:xs)

pack' :: (Eq a) => [a] -> [[a]]
pack' [] = []
pack' (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)