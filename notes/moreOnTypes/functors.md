## Functors 

I just think of the functors to be special typeclasses in haskell.
```
class Functor f where 
    fmap :: (a -> b) -> f a -> f b
```
Here 'f' represents a type contructor like (Maybe) that takes only one argument, (tho we can replace f with type contructors taking more than 1 arguments but we will talk about that later).

lets write some different instances of this functor in haskell.

Lets try first with the List type:
```
instance Functor [] where
    fmap = map 
```
so since the function fmap is just similar to the map function over the list we just equate the two.

Lets try with the Maybe type:
```
instance Functor Maybe where
    fmap f m = case m of ->
                    Just x = Just (f x)
                    Nothing = Nothing
```
There is another most important type in haskell called the 'IO'(Input Output) type.

IO type in haskell is also a functor.
```
Instance Functor IO where
    fmap f action = do
                result <- action
                return (f result)
```
the do notation is very simple it is just a syntactic sugar for the '>>=' bind operator, we will come to that later. In this example just consider result to be the name of the variable given to the output of the action.

lets look at some example functions for this type using the do notation.
```
somfunc = do 
             result <- fmap reverse getline 
             putstrln "the sentence is" ++ result ++ "!!"
```
This function first asks a string from the user than reverses it and then prints it in a certain format.

## Applicative Functors

They are just "beefed" up Functors in haskell.

This means that in the functors we were taking a normal function as a parameter. Instead in the Applicative functors we want the function to be "wrapped" in a value constructor.

This behaviour is brought about with the help of 2 functions (pure and (<*>)).

Lets look into the applicative functor typeclass.
```
type (Functor f) => Applicative f where
    pure :: a -> f a
    (<*>) :: f (a -> b) -> f a -> f b
```
Another cool function is the (<$>) which is just an infix function for the fmap function.

Lets play around with these functions a little bit.

```
Just (3+) <*> Just (4)
> Just 7

pure (*) <*> Just (3) <*> Just (4)
> Just 12
```
So the first function is quite intuitive but the second function we need to see what is happening under the hood.

```
pure (*) <*> Just (3) <*> Just (4) = Just (3*) <*> Just (4) = Just (3*4) = Just 12
```
lets not use pure and replace it with (<$>) function.
```
(*) <$> Just (3) <*> Just (4)
> Just 12
```




