# Functional Programming

* What are functional programming languages? Functional programming languages are programming languages that use functions as the central element of program design. They emphasize the application of functions rather than the state change of variables. Examples include Haskell, Lisp, ML, etc.

* What are the main features of functional programming languages? Some key features include first-class functions, immutable data, no side effects, recursion instead of loops, expression-oriented design, higher-order functions, lazy evaluation, pattern matching, etc.

* How are functional programming languages different from imperative languages? Imperative languages like C, Java focus on changing state through statements that update variables. Functional languages focus on expressions that evaluate to values without mutating state.

* What are the benefits of the functional programming paradigm? Benefits include easier reasoning about code, easier testing and debugging, parallelism and concurrency support, avoidance of side effects, mathematical foundations, etc.

* What are higher-order functions? Higher-order functions are functions that take other functions as arguments or return functions as output. This enables abstraction and composition.

* How does immutability work in functional languages? Data structures are immutable or unchangeable once created. To "change" them, new structures are created while the original is preserved. This eliminates side effects.

* What is recursion and how is it used? Recursion is function calling itself to repeat code. It replaces loop statements in imperative languages. Tail call optimization avoids stack overflow.

* What are the limitations or drawbacks of functional languages? Steep learning curve, difficulty modeling stateful logic, slower runtime performance, limited adoption outside academia currently.

* What is a "pure" functional language? A pure functional language does not allow any side effects or mutation of state. The result of a function call is entirely determined by its inputs. Examples of pure languages include Haskell, Miranda, etc.

* What is an "impure" functional language? An impure functional language allows some side effects and state changes, while still emphasizing functional programming features. Examples include ML, F#, OCaml, Scala, etc.

* How do impure functional languages handle side effects? They contain mechanisms like monads which "contain" side effects, or have mutable data marked explicitly as modifiable. This allows side effects without compromising functional style and equational reasoning.

* What are some advantages of pure functional programming? Pure FP enables referential transparency, easier formal reasoning about code, parallelization, mathematical foundations. It's easier to prove programs correct.

* What are some advantages of impure FP? Impure FP has more flexibility to handle real-world programs like I/O, mutable state when needed. It has broader mainstream adoption. Performance may be better allowing some imperative style.
