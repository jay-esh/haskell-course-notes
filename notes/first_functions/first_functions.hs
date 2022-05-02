
doubleMe :: Num a => a -> a
doubleMe x = 2*x

doublenumless100 :: (Ord a, Num a) => a -> a
doublenumless100 x = if x > 100
                        then x
                     else 2*x
