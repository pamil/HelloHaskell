module Pamil.List.Compress where

-- P08: Eliminate consecutive duplicates of list elements.

compress :: (Eq a) => [a] -> [a]
compress (x:xs@(y:_))
    | x == y    = compress xs
    | otherwise = x : compress xs
compress xs = xs
