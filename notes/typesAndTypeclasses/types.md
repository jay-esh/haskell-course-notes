## Types in haskell

We all know some basic types in any programming language: Int, Char, Bool, [Char] or strings

Haskell has another widely used type called Maybe type 
```
Maybe a = Just a | Nothing 
```
It has got 2 value contructors: Just and Nothing

In order to create new types in haskell we use the "data" keyword
For eample:
```
data Shape = Circle (Float, Float) Float | Rect Float Float
```
Here we have created a "Shape" type with 2 value constructors called Circle and Rect.
In haskell the value contructors also work as functions with their fields (here all floats) as their arguments.

we can find out the type of anything by typing ":t" in the prelude in the terminal
```
Prelude>:t Circle
Circle :: (Float, Float) -> Float -> Shape
```
## New Syntax
In the above example of shape type we could not figure out that the fields in the value contructors represented the center of the circle and its radius and the lenght and the width of the rectangle, since we just represented it by Float.

In order to make this clear haskell has a special syntax called record syntax.
```
data Shape = Circle {center :: (Float, Float)
                    , radius :: Float} |
             Rect {length :: Float
                 , width :: Float}
```
if we search for the type of these fields in the prelude we will get:
```
Prelude> :t center
center :: Shape -> (Float, Float)
```
Examples of some functions on the "Shape" type are created in the types.hs file.

## Type Parameters
remember the maybe type:
```
data Maybe a = Just a | Nothing 
```
Here "a" represents the type parameter, it meand that we can replace "a" with any type.
We can have Maybe Char, Maybe Int etc.
since Maybe has a type parameter we call it a type contructor.

## Typeclasses
You might have seen Ord, Num, Show etc in the type decleration of the functions before they some examples of typeclasses in haskell.

These bring a certain behaviour to the functions.
Whenever we see "=>" symbol in the type decleration of the functions it means that their is a class constraint on the funtion that we have defined/implemented.

## Type Synonyms
As the name suggest type synonyms just give different names to previously defined types. We usually use this inorder to rename the types that are tedious to ype and not intuitive, for example the string type. We usually do this by using the "type" keyword.
```
type String = [Char]
```
## Derived instances 
As you might have seen in the code file (types.hs) in this directory where we defined the new "shape" type we added "deriving (Show)" at the end of the decleration this is an exaple of the deriving instances.
```
data Shape = Circle {center :: (Float, Float)
                    , radius :: Float} |
             Rect {length' :: Float
                 , width :: Float} deriving (Show)
```
We must remeber that we cannot create data from typeclasses in hsakell we create our own data types first and then figure out if the behaviour of a particular typeclass is required in the datatype that we created, for example the "int" data type required to have the behaviour of the "Eq" typeclass because we sometimes require the logic of equating 2 integers in our code. Thus the "int" data type derives the behaviour of "Eq" typeclass is a classical example of derived instances.
