## More on Typeclasses

As we know typeclasses in haskell are behaviours that are extended to the data types that we think that must have this behaviour.

Now we will go through the concepts to form an instance of a typeclass in haskell.

for example:
```
class Eq a where
    (==) :: a -> a -> Bool 
    (!=) :: a -> a -> Bool
    (x == y) = not(x != y)
    (x != y) = not(x == y)
```
While defining a typeclass we just mention the type declaration of the related function in haskell.

but when we create an instance of this typeclass we mention the logic for each function in that type declaration.

for example:
```
instance Eq (Maybe m) where
    Just x == Just y = x == y
    Nothing == Nothing = True 
    _ == _ = False
```
Here we are creating an instance of Maybe type of the Eq typeclass in haskell.
Note: in the type declaration of Eq we defined the 2 function in terms of each other thus it becomes easier then to write the instance of such a typeclass.

But still we are missing something in the instance of the Eq typeclass,
```
instance (Eq m) => Eq (Maybe m) where
    ...
```
here as you can notice we extend the property or the behaviour of the Eq typeclass to the field of the value contructor of Maybe type because we as we are defining the function in tha instance we require the field of the Maybe type to also posses the behaviour of the Eq typeclass.


