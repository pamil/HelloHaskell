module Pamil.List.Quicksort where

-- Quicksort implementation

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = smallerOrEqual ++ [x] ++ bigger
  where smallerOrEqual = quicksort [ y | y <- xs, y <= x]
        bigger         = quicksort [ y | y <- xs, y > x]
