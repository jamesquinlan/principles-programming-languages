# Introduction

<!-- Thought is not merely expressed in words, it comes into existence through them - Lev Vygotsky. -->
> How we program influences how we think about computation and vice-versa - Louden & Lambert.


<!-- ------------------------------------- -->
## Goals
* Introduce notions of programming languages
* Outline basic concepts of programming language design

We introduce the principles and concepts underlying programming languages.  It is not about specific programming languages, however, specific languages are used to illustrate these principles and concepts.  

### History of Programming Languages

#### Machine Language

At the lowest level, computers understand binary code.  For example, 16-bit machine language program containing 4 instructions could be:

```
0011011010011010
0000000000000101
0000000000000110
1001110101011111
```

Different part of the 16-bits are used for operation, memory location, and data values.  __Opcode__ is the part (say, first 4 bits) for the operation.


The programmer could use the _Supercoder 2000_ to enter these instructions:

[![Machine Language Interface](../images/supercoder_2000_binary_keyboard.jpeg)](../images/supercoder_2000_binary_keyboard.jpeg)


#### Assembly Language

In the 1950's mnemonic symbols were used for instruction and memory locations.  The __assembler__ translates the symbolic assembly language code to binary machine code.  Here is a 1 line assembly code:

```
LD R1, FIRST
```





<!-- ------------------------------------- -->
## Abstractions in Programming Languages

Central to making programs easier to read, abstractions fall into two categories:

1. __data abstraction__ 
2. __control abstraction__

### Data: Basic Abstractions

Often the programmer cannot access of the hidden internal representaions of common data values.  For example, 
integers are often sotred using two's complemnt representation.  Real numbers are stored using IEEE single- or double-precision machine representations.  The component parts are not accessible.



### Data: Structured Abstractions

A __data structure__ is a method of collecting and storing related data into a single unit.  The data structure can be viewed as a single unit contain a collection of parts.  The principle data structure is the __array__, in C

```
int x[10];
```

A text file is another example.  Text file's structure is independent of storage medium.  
A data structure is an abstraction that hides a group of component parts, allowing programmer to view it as a single entity.




### Data: Unit Abstraction

Grouping related data and operations on the data into files or language structures (e.g., modules, packages, libraries, classes) is useful.  These support access conventions and restrictions (information hiding).  Unit abstraction is often associated with __abstract data type__ (class objects).  Another property of unit abstraction is __reusability__.  


### Control: Basic Abstractions

Assignment and arithmetic are two basic control abstractions.  Programmers simply type:

```
z = x + y
```

Under the hood there are complex memory functions and arithmetic operations happening.




### Control: Structured Abstractions

Selection and iteration are two examples of structure control abstraction.  For example, in C++ we have, 

```
int sum = 0;
for (int i = 0; i < 10; ++i){
    int data  = list[i];
    if (data < 0)
        data = -data;
    sum += data;
}
```
Can you describe exactly how the computer handles the `for` and `if` statements?  This is structured control abstraction.

Other structured control abstraction include: __subprograms__, __functions__, and __maps__.




<!-- ------------------------------------- -->
## Computational Paradigms

Programming languages imitate and abstract the operations of a computer.

1. __Imperative Language__: A sequential execution of instructions, using variables representing memory locations, and the use of assignment to change their values.  Imperative languages are based on the von Neumann model and represent most programming languages today.  This model has some restrictions to provide parallel copmutation or other nondeterministic computation that does not depend on order.  
2. __Function Language__: Based on notion of a function as studied in the lambda calculus.  Allows consice, abstract, and precise code.
3. __Logical Language__: Based on symbolic logic.  Allows concise, abstract, and precise code.
4. __Object-oriented Language__: Allows writing reusable code that operators on objects, analog to real-world objects.  Makes use of intution about the real-world objects.  Object-oriented language is an extension of imperative language (using sequential execution of values in memory locations).  Allows parallel processing.  




<!-- ------------------------------------- -->
## Language Defintion

Formal definition and standardization of a language is desirable.  Organizations including ANSI (American National Standards Institute) and ISO (International Organization for Standardization) publish definitions for many languages, i.e., C, C++, and Lisp. 

A language definition has two components:
1. __Syntax__: structure of the language
2. __Semantics__: meaning of the language



### Syntax

Syntax is the __grammar__ of the language, describing ways the different parts may be combined to form sentences.  The grammar rule in C of the `if` statement follows:

```
<c-if-statement> ::= if (<expression>) <statement>
    [else <statement>]
```

Note: The square brackets indicate an optional clause.

The structure of the language's words, called __tokens__, is the __lexical structure__ (similar to spelling in natural language).  Other tokens in programming languages include: identifiers, operators (`+`,`*`), and punctuation such as the semicolon (;) and the period (.).



### Semantics

Semantics is the meaning of the language (including the effects of execution).  Defining a language semantics is complex and may involve many contexts and mechanisms, thus making it difficult to specify.  As such, it is not customary to provide a formal definition of the semantics of a programming language.  However, some notational systems have been developed in attempt to formally define language semantics, such as: __operational semantics__, __denotational semantics__, and __axiomatic semantics__. 







<!-- ------------------------------------- -->
## Language Translation

A __translator__ is needed for programming languages (to be useful).  A translator converts source code to target code.  There are two types of translators:

1. __Interpreter__: the translator executes the program directly (Simulation of sorts)
2. __Compiler__: the translator produces equivelant code suitable for execution (e.g., machine code).  

Compilation is at least a two-step process: 
__Source code__ is input to the compiler, and the __target program__ is the output from the compiler.  The target is then executed (if it is machine code).  In some cases the target language is assembly language, and needs further translated by an __assembler__ into __object code__ (machine language).  In other cases, the target language is a form of low-level code called __byte code__.  Then the byte code is executed by an interpreter called a __virtual machine__.  Java and Python are comiled to  byte code and excuted on virtual machines, whereas C and C++ are compiled to machine code and executed directly on hardware.






<!-- ------------------------------------- -->
## References
```
@book{louden2011programming,
  title={Programming languages: principles and practices},
  author={Louden, Kenneth C and Lambert, Kenneth A},
  year={2011},
  publisher={Cengage Learning}
}

@book{vygotsky2012thought,
  title={Thought and language},
  author={Vygotsky, Lev S},
  year={2012},
  publisher={MIT press}
}
```
