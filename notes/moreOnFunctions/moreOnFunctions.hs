numberOne :: (Eq a, Num a) => a -> [Char]
numberOne 1 = "This is it!!!"
numberOne _ = "Try again!!"

fact :: (Eq p, Num p) => p -> p
fact 1 = 0
fact x = x * fact (x-1)

max' :: Ord p => p -> p -> p
max' x y 
    | x > y = x
    | otherwise = y

-- where statement
cylinderVol :: (Ord p, Floating p) => p -> p -> p
cylinderVol radius height  
    | radius <= 0 = error "Error!!"
    | height <= 0 = error "Error!!"
    | otherwise = cylinderArea * height
    where cylinderArea = pi * radius^2

-- above function using let statement
cylinderVol' :: (Ord p, Floating p) => p -> p -> p
cylinderVol' radius height =
    let
        cylinderArea' = pi * radius^2
    in
        (if (radius <= 0 || height <= 0) then error "Error!!"
            else (cylinderArea' * height))

find50 :: (Eq a, Num a) => a -> [Char]
find50 x =
    case x of 
        50 -> "the number is 50!!!"
        _ -> "the number is not 50 try again!"

     