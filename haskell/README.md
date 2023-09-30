# Hello Haskell!



<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
## What is Haskell

<!-- Let's start by what its NOT (or how it differs from imperative languages) -->

* Lisp (List Processing) - first functional programming language
* Imperative languages have state and flow control structures
* You tell computer to do stuff
* Purely functional program language
* Haskell is **declarative**: you tell what stuff is!  (Instead of giving instructions of how to compute or find).
	* the factorial of n is:= 
	* the sum of a list is:=
	* the prime numbers are:=  
* "Stuff" is expressed in terms of functions
* A variable is constant (immutable, can't change later)
* No side-effects, same output is guaranteed for same input = Referential Transparency
* $y = f(x)$
* Haskell is lazy (only excutes when necessary)
* Haskell is statically typed (compiler knows what is a number, string, and so on)
* Haskell has type inference
* Elegant and concise
* Minimal syntax
* Uses indentation (like Python)


## Functional?

```
def sumit(x):
  s = 0
  for i in range(len(x)):
    s += i
  return s
```

```
def collatz(n):
  hailstones = [n]
  while n > 1:
    if n % 2 == 0:
      n = n >> 1
    else:
      n = 3*n + 1
    hailstones.append(n)
```

```
def square(x):
  return x*x
```


```
s = sum([i**2 for i in [-3,-4,0,1,2,3,4,5] if i > 0 ])
```



```
x = [-3,-4,0,1,2,3,4,5]
sum([i**2 for i in x if i > 3 ])
```

```
S = lambda x: sum([i**2 for i in x if i > 3 ])
S(x)
```





```
# Functional Programming in Julia

# Piping
sqlst(x) = filter!(>(0), x) |> x -> x.^2
sqlst([-1,2,-5,3])

# Logical Indexing + element-wise operations
sqlst2(x) = (x[x .> 0]).^2 
sqlst2([-1,2,-5,3])

# Ternary operator with element-wise operations and vector slicing
isprime(n::Int32) = n == 2 || all(n .% (3:2:Int(ceil(sqrt(n)))) .> 0) ? true : false
isprime(29)
```









<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
## Installation Haskell (Linux)
Below are directions to install Haskell locally.  

Update your system packages.  
```
sudo apt-get update
```

It is possible `curl` is not installed.  If **not**, run
```
sudo apt-get install curl
```


Copy the following command from the [Haskell website](https://www.haskell.org/ghcup/install/) and paste it in the terminal:
```
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

You will get (something like):

```
Welcome to Haskell!

This script can download and install the following binaries:
  * ghcup - The Haskell toolchain installer
  * ghc   - The Glasgow Haskell Compiler
  * cabal - The Cabal build tool for managing Haskell software
  * stack - A cross-platform program for developing Haskell projects (similar to cabal)
  * hls   - (optional) A language server for developers to integrate with their editor/IDE

ghcup installs only into the following directory,
which can be removed anytime:
  /home/lb/.ghcup

Press ENTER to proceed or ctrl-c to abort.
Note that this script can be re-run at any given time.

-------------------------------------------------------------------------------

Detected zsh shell on your system...
Do you want ghcup to automatically add the required PATH variable to "/home/lb/.zshrc"?

[P] Yes, prepend  [A] Yes, append  [N] No  [?] Help (default is "P").

A
-------------------------------------------------------------------------------
Do you want to install haskell-language-server (HLS)?
HLS is a language-server that provides IDE-like functionality
and can integrate with different editors, such as Vim, Emacs, VS Code, Atom, ...
Also see https://haskell-language-server.readthedocs.io/en/stable/

[Y] Yes  [N] No  [?] Help (default is "N").

Y
-------------------------------------------------------------------------------
Do you want to enable better integration of stack with GHCup?
This means that stack won't install its own GHC versions, but uses GHCup's.
For more information see:
  https://docs.haskellstack.org/en/stable/yaml_configuration/#ghc-installation-customisation-experimental
If you want to keep stacks vanilla behavior, answer 'No'.

[Y] Yes  [N] No  [?] Help (default is "Y").

N

===============================================================================

All done!

To start a simple repl, run:
  ghci

To start a new haskell project in the current directory, run:
  cabal init --interactive

To install other GHC versions and tools, run:
  ghcup tui

If you are new to Haskell, check out https://www.haskell.org/ghcup/steps/

```

> However, you can easily work in the cloud and highly recommended to avoid download, installing, and maintaining.  [Cocalc](https://www.cocalc.com)

 
 
 
 
<!-- ------------------------------------------------------------------------ -->

## Hello Haskell
 Open a terminal and type: `ghci` to open an interactive REPL environment.

```
> print "hello haskell"
```

This can be placed in a `.hs` file (e.g., `hello.hs`), then compiled and ran.

```
main::IO()

main = do
  print "hello haskell"
```

At the terminal, 

```
> ghc hello.hs
> ./hello
```

### Comments 
```
-- either two dashes
{- this is also a comment -}
```




<!-- 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
 FOOTER 
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-->
<div style="border-top: 1px solid #ccc;padding:0px 0px 20px 0px;"></div>
<i style="padding-left:0px;">
Last modified  Mon Sep 04 2023 06:59:56 PM EST
<a href="https://cs.usm.maine.edu/~james.quinlan/cos360/">COS 360 - Programming Languages</a>
</i>  

