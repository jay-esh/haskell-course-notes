## Monads

Monads are beefed up Applicative functors.

They have their own typeclass.
```
class Monad m where
    (>>=) :: (m a) -> (a -> m b) -> (m b)
    (>>) :: m a -> m b -> m b
    return :: a -> m a 
    ...
```
These are the important functions that we will be dealing with the functor typeclass.

Here the first function defined in the typeclass is called the bind function.
the return function is the same as the pure function in the Applicative functor typeclass.

So we can also say that monads are nothing but applicative functors having a bind operator/function in their behaviour.

Some of the functions we wrote in the types102.hs file uses monads.
Note while defining Monad typeclass we should specify "(Applicative m) =>" but we dont becaus eof some wierd reason u can read about this [here](http://learnyouahaskell.com/a-fistful-of-monads#the-monad-type-class).

## do notation

Do notation is nothing but syntactic sugar for the 'bind' function in haskell.

Lets give an example with a list monad. Note: Lists are an example of monads.
```
instance Monad [] where
    return x = [x]
    (>>=) xs f = concat (map f xs)
    ...
``` 
as u can see the 'bind' function is a little difficult to comprehen so lets look at some example functions.

```
[1,2,3] >>= (\x -> [4,5,6] >>= (\y -> [(x,y)]))
> [(1,4),(1,5),(1,6),(2,4),(2,5),(2,6),(3,4),(3,5),(3,6)]
```
This is an example of a nested bind function on lists.
Here we can see that 'x' variable in the lambda function is nothing but the values of the first list and the 'y' is the variable representing the other list in ths lambda function.

You notice that this can also be written using the list comprehension.
```
[(x,y)| x <- [1,2,3], y <- [4,5,6]]
```
This same function can also be written using the 'do' notation.
```
lis xs ys = do x <- xs
               y <- ys 
               return (x,y)
```
