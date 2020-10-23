# flhaskell

Code from the class [Functional Programming in Haskell][1] on the FutureLearn platform.

Course material on Github at: [wimvanderbauwhede/HaskellMOOC][2].

## Running

I mostly worked with this repo interactively using stack:

> stack ghci

...which should result in something like:

```
Using main module: 1. Package `flhaskell' component flhaskell:exe:flhaskell-exe with main-is file: /Users/jchristopherbare/Documents/projects/flhaskell/app/Main.hs
flhaskell> configure (lib + exe)
Configuring flhaskell-0.1.0.0...
flhaskell> initial-build-steps (lib + exe)
The following GHC options are incompatible with GHCi and have not been passed to it: -threaded
Configuring GHCi with the following packages: flhaskell
GHCi, version 8.8.4: https://www.haskell.org/ghc/  :? for help
(0.00 secs, 0 bytes)
Loaded GHCi configuration from /Users/jchristopherbare/.ghci
[1 of 7] Compiling Lib              ( /Users/jchristopherbare/Documents/projects/flhaskell/src/Lib.hs, interpreted )
[2 of 7] Compiling Main             ( /Users/jchristopherbare/Documents/projects/flhaskell/app/Main.hs, interpreted )
[3 of 7] Compiling ParsecTutorial.ShowParser ( /Users/jchristopherbare/Documents/projects/flhaskell/src/ParsecTutorial/ShowParser.hs, interpreted )
[4 of 7] Compiling ParsecTutorial.TestShowParser ( /Users/jchristopherbare/Documents/projects/flhaskell/src/ParsecTutorial/TestShowParser.hs, interpreted )
[5 of 7] Compiling Speller          ( /Users/jchristopherbare/Documents/projects/flhaskell/src/Speller.hs, interpreted )
[6 of 7] Compiling Starman          ( /Users/jchristopherbare/Documents/projects/flhaskell/src/Starman.hs, interpreted )
[7 of 7] Compiling Tree             ( /Users/jchristopherbare/Documents/projects/flhaskell/src/Tree.hs, interpreted )
Ok, 7 modules loaded.
Loaded GHCi configuration from /private/var/folders/rq/mr6ycrd942x4kxzk0m94kqd00000gn/T/haskell-stack-ghci/67def516/ghci-script
λ> 
```


[1]: https://www.futurelearn.com/courses/functional-programming-haskell
[2]: https://github.com/wimvanderbauwhede/HaskellMOOC
