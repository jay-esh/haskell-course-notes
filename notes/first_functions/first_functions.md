## Syntax 

Functions in the normal mathematics notes are written as "f(x)" and is read as "f of x"

but in haskell the functions are written without the brackets but with space.
```
f x
```
this is also read as "f of x" if u have done shell scripting you might be familiar with the importance of space character in shell, it is equally important in haskell.

let's create a function in haskell

```
doubleMe :: Num a => a -> a
doubleMe x = 2*x
```
the code written in line 1 is called type decleration for the function and the next line is our actual ultimate function called doubleMe

Things to keep in mind while creating functions:
1. Type declerations are not necessary but for syntax purposes but will be required for your understand of what the function actually does.
2. The function names should always start with a small charater.
3. Always have proper indentations in the code of your functions.
4. A single apostrophe is allowed in the function names.

## If Statements 

I like jumping straight to the code so here it is:
```
doublenumless100 :: (Ord a, Num a) => a -> a
doublenumless100 x = if x > 100
                        then x
                     else 2*x
```
It is straightforward if you have programmed in any programming language before.
The only difference in haskell is that the else part is mandatory. 



