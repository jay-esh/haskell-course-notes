## GHCi 

full form: Glasgow Haskell Compiler
It is the compiler and the interpreter of the Haskell programming language (Therefore we don't need to mention the types explicitly in haskell like in other programming languages like C)

download ghci from this link: (https://www.haskell.org/ghc/) 

to enter into ghci just type ghci in your terminal you will be prompted with something like 
```
GHCi, version 8.10.7: https://www.haskell.org/ghc/  :? for help
Prelude> 

```
There are many functions already defined in the prelude. You can play around with them when you are in prelude.

```
1+2
5/2
...
```
There are many others which we will go through later.

The haskell files have an extention of ".hs" tho it is not mandatory but it is useful to identify your haskell scripts.

The code mentioned in these notes can be run on ghci by using 
```
stack ghci path/to/ur/hs/file 
```
