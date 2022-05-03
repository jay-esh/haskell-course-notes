mylist :: [Integer]
mylist = [x^3| x <- [1..5]]

{-*Main> mylist
[1,8,27,64,125]-}

mylist2 :: [Integer]
mylist2 = [x^3| x <- [1..5], x>3]

{-*Main> mylist2
[64,125]-}

aTuple :: (Integer, Char, [Char])
aTuple = (1,'2',"a string")

myzip :: [a] -> [b] -> [(a, b)]
myzip [] _ = []
myzip _ [] = []
myzip (x:xs) (y:ys) = (x,y) : myzip xs ys

{- since zip is already difined in the prelude 
we cannot create it again so I named it as myzip 
it takes in 2 lists, the first 2 lines 
take care of the base case of this recursive function
and the third line represents the recursive step
here "_" represents an arbitrary argument(of list type) that we
dont care about since if either of the list is an empty 
list it should return an empty list and for the recursive 
case we represent lists with (x:xs) and (y:ys) for simplifying 
the code because here x and y represent the first element of the 
lists and xs and ys represent the rest of the list or the 
tail of the lists. 
Note: Lists are represented as xs and ys with an s at the end
if used in funtion arguments.
-}