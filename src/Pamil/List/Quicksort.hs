module Pamil.List.Quicksort where

-- Quicksort implementation

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = smallerSorted ++ [x] ++ biggerSorted
    where smallerSorted = quicksort [ y | y <- xs, y <= x]
          biggerSorted  = quicksort [ y | y <- xs, y > x]

quicksort' :: (Ord a) => [a] -> [a]
quicksort' [] = []
quicksort' (x:xs) = smallerSorted ++ [x] ++ biggerSorted
    where smallerSorted = quicksort' . filter (<= x) $ xs
          biggerSorted  = quicksort' . filter (> x) $ xs