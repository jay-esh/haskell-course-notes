## Lists

So like any other programming languages lists are represented by square brackets and the elements in the lists are then seperated by a comma.
```
mylist = [1,2,3]
```
Lists in haskell can contain elements only of a single type.
### Functions for Lists

```
(++) :: [a] -> [a] -> [a]
```
Note: when calling this function we don't require parenthesis.

This is known as the concatination operator that just concats the 2 lists (arguments) together.
```
Prelude> [1,2,3] ++ [4,5,6]
[1,2,3,4,5,6]
```
Another operator that does the same thing but in a different way is the (:) operator.
```
Prelude> 1 : [4,5,6]
[1,4,5,6]
```
So a list can be written in 2 ways
```
Prelude>[1,2,3] == 1:2:3:[]
True
```
There are many other functions working on lists [here](https://hackage.haskell.org/package/base-4.16.1.0/docs/Data-List.html#g:1)

Remember we can use these functions in combinations to create some cool functions of our own.

## List Comprehensions 

If you have taken discrete math courses, you might remember set comprehensions.

List comprehensions are similar with different syntax.
```
mylist = [x^3 | x<-[1..5]]
```
is similar to 
```
{x^3 | x $\in$ {1,2,3,4,5}}
```
It will give us a list of cubes of all the numbers from 1 to 5.

We can add conditions to the elements in the list comprehensions.
```
mylist = [x^3 | x<-[1..5], x > 3]
```
Now this will return the list of cubes of numbers 4 and 5.

## Tuples 

Tuples are the same as lists but written in parenthesis and can have elements of different types in them.
Thus their types need to be explicitly written in the type decleration.
```
aTuple :: (Integer, Char, [Char])
aTuple = (1,'2',"a string")
```
Note: string is nothing but a string of characters and the character is surrounded by a single quotation while the string is surrounded by double quotation.

One important function using list and tuple is the "zip" function
```
Prelude> zip [1,2,3] ['a','b','c']
[(1,'a'),(2,'b'),(3,'c')]
```





