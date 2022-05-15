lis :: Monad m => m a -> m b -> m (a, b)
lis xs ys = do 
                x <- xs
                y <- ys 
                return (x,y)
                

-- same function using the bind function

lis' :: Monad m => m a -> m b -> m (a, b)
lis' xs ys = xs >>= (\x -> 
             ys >>= (\y ->
                 return (x,y)))

