## Curry functions

functions in haskell are quite interesting as only uninay functions (functions with one argument) are allowed in haskell.

Then how do we create functions with several arguments?

This happens because of curried functions. 
Curried functions are the functions which take the first argument as their only argument and then return a function which takes the second argument as the its only argument and so on.

For example min function, we think it takes in 2 arguments 
```
min 1 2
```
But it takes in 1 argument and then returns a function "(min 1)" and this function then takes "2" as its argument.
```
(min 1) 2
```
"min 1" is called the partial application of the function.

## High Order Functions

These are the functions which take other functions as their arguments. 

For example functions like map and filter take functions as one of their arguments.

Refer to HighOnFunctions.hs file for the implementation of the functions.

## Lambda Functions

These are anonymous functions used to create functions which are required only once in our code.
```
Prelude> map (\(a,b) -> a + b) [(1,2),(3,4),(5,6)]  
[3,7,11]
```
## $
This operator is just a function application but is right associative while the space character is also a function application in haskell but it is left associative.
```
f a b c = ((f a) b) c
f $ a $ b c = f (a (b c))
```
When I am confused I just treat this operator like an alias for parenthesis and replace it with parenthesis in the code for me to understand.

## The dot operator 
The dot operator is just used for function compositions.
```
(f . g) x = f (g x)
```
Playing with parenthesis again.
