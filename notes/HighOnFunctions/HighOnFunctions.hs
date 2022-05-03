map' :: (t -> a) -> [t] -> [a]
map' f [] = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x:xs)
    | f x = x : filter' f xs
    | otherwise = filter' f xs

-- some more examples of higher order functions
foldr' :: (a -> t -> t) -> t -> [a] -> t
foldr' _ v [] = v 
foldr' f v xs = foldr' f (f (last xs) v) (take ((length xs)-1) xs)

{- foldr function computes from the right end of the list 
    foldr (-) 54 [10,11]
    11 - 54 == -43
    10 - (-43) == 10 + 43 == 53
    -}

foldl' :: (t1 -> t2 -> t1) -> t1 -> [t2] -> t1
foldl' _ v [] = v
foldl' f v (x:xs) = foldl' f (f v x) xs

{- foldl function computes from the right end of the list 
    foldl (-) 54 [10,11]
    54 - 10 == 43
    43 - 11 == 33

Note the arangements of the arguments to the function "f" while computing.
    -}



