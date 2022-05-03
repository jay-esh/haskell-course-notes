import Prelude hiding ((&&),(||))
-- The best way to understand haskell or any 
-- other programming language is by practicing 
-- so lets recreate some prelude functions in haskell

-- Boolean operators

-- and operator
(&&) :: Bool -> Bool -> Bool
(&&) True True = True
(&&) _ _       = False

--or operator
(||) :: Bool -> Bool -> Bool
(||) False False = False
(||) _ _         = True

-- negation function
negate :: Bool -> Bool
negate True = False
negate _    = True

--functions to work with tuples
fst' :: (a, b) -> a
fst' (a,b) = a

snd' :: (a, b) -> b
snd' (a,b) = b

succ' :: Num a => a -> a
succ' x = 1+x

pred' :: Num a => a -> a
pred' x = x-1

--funtions working on lists
head' :: [p] -> p
head' [] = error "empty list!!"
head' (x:xs) = x

tail' :: [a] -> [a]
tail' [] = error "empty list."
tail' (x:xs) = xs

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- 2 ways to create a last function
last' :: [p] -> p
last' [] = error "Empty list!!!"
last' xs = head (reverse xs)

last2' :: [p] -> p
last2' [] = error "Empty list!!!"
last2' [x] = x
last2' (x:xs) = last2' xs

init' :: [a] -> [a]
init' [] = error "Empty list!!"
init' [x] = []
init' (x:xs) = x : init' xs

length' :: Num p => [a] -> p
length' [] = 0
length' (x:xs) = 1 + length' xs


take' :: (Eq t, Num t) => t -> [a] -> [a]
take' _ [] = []
take' x (y:ys) 
    | x == 0 = []
    | otherwise = y : take' (x-1) ys

--drop function is opposite to take
drop' :: (Eq t, Num t) => t -> [a] -> [a]
drop' _ [] = []
drop' 0 xs = xs
drop' n (x:xs) = drop' (n-1) xs


maximum' :: Ord a => [a] -> a
maximum' [] = error "empty list"
maximum' [x] = x
maximum' (x:xs) 
    | x > head xs = maximum' (x: drop 1 xs)
    | otherwise = maximum' xs


sum' :: Num p => [p] -> p
sum' [] = 0
sum' (x:xs) = x + (sum' xs)

product' :: Num p => [p] -> p
product' [] = 1
product' (x:xs) = x * product' xs


elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' n (x:xs) 
    | n == x = True
    | otherwise = elem' n xs