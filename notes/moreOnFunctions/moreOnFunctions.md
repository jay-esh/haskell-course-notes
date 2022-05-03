## PatternMatching

One of the most powerful features in haskell is pattern matching.

It is used while coding complex functions in haskell.
```
numberOne :: (Eq a, Num a) => a -> [Char]
numberOne 1 = "This is it!!!"
numberOne _ = "Try again!!"
```
Here we use pattern matching on '1' as argument to the above function.
"_" here means anything of the given type "other than 1".

In haskell the code is read by ghci from top to bottom in an order so the line 
```
numberOne _ = "Try again!!"
```
mathes for everything other than 1 because it comes after the line where "1" as an argument is pattern matched. But if this line came first in the function code then ghci will run print "Try again" for evry argument including 1.

Factorial function is a good example:
```
fact :: (Eq p, Num p) => p -> p
fact 1 = 0
fact x = x * fact (x-1)
```
Here it is very easy to understand if we give it an argument of 1 then the function will always return 0 and if we give any other argument we compute the factorial recursively, thus the first line is acting as the base case for this recursive function.

## Guards

Guards are similar to if statements but they are more readable than if statements in haskell.
```
max' :: Ord p => p -> p -> p
max' x y 
    | x > y = x
    | otherwise = y
```
Note: we can call this function in ghci in 2 ways:
```
> max' 1 2
2
> 1 `max'` 2
2
```
Notice the difference between the 2. These are useful for functions that take only 2 arguments.

## Where and Let Statements 

Where and let statements are used to reduce the repeated use of a line of code in haskell. I view it as variables in haskell.

The only difference between "where" and "let" statements it that the where statements come at the end of the function while let statements come at the beginning of the function.

Refer to the code (hs file) for examples

## Case Expressions 

These are used to execute different blocks of code for different values of the variable.

Again refer to the code (hs file) for examples


