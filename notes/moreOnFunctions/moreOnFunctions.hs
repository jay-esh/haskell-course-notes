numberOne :: (Eq a, Num a) => a -> [Char]
numberOne 1 = "This is it!!!"
numberOne _ = "Try again!!"

fact :: (Eq p, Num p) => p -> p
fact 1 = 0
fact x = x * fact (x-1)
