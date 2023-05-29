# Programming Language Design Criteria

Consider the following questions:
1. What is a good programming language design?
2. What criteria is used to determine if it is good?

Language __abstraction__ and __complexity control__ are key requirements for a modern programming language.

According to Louden & Lambert (2011), a language is "successful" if
1. Acheieves designers goals
2. Attains widespread use and support in application areas
3. Serves as a model for other languages that are successful

There are several __factors of success__ for a language.  For example, 
* the Internet helped Java and Python's success in addition to their free distribution;
* UNIX is largely responsible for the success of C;  
* Smalltalk, although not widespread use, has served as a model for many object-oriented programming languages;
* Is the language designed by small group of individuals (C, C++) or a large community (COBOL)?




## General Design Criteria

Readability, abstraction, and complexity control are central to most design decisions.

1. __Efficiency of execution__: early machines were slow.  FORTRAN was specifically designed to generate compact code and fast execution.  FORTRAN directly mapped to machine code.  

Static typed vaaribles creates more efficient execution, otherwise it must be checked during runtime.  For example, in the Java code below, `i` is declared as an integer (static typing), however, in the Python code (duck typing), the system needs to check the type before executing operations on it.  

```java
int i = 10;
```

```python
i = 10
```

__Programmer efficiency__ is another consideration.  How quickly can a programmer develop a program?  This is directly related to the programming language's __expressiveness__.  However, there is a trade-off usually between programmer efficiency and execution efficiency.  For example, by not having to provide explicit data types (e.g., `int x;`) or use more syntax (e.g., `if (x > 0){}`), programmers can code more efficiently, however, the strict typing of varaibles increases execution efficiency.  However, it has been found that coding is only about 10% of the process, whereas debugging and maintaining is around 90%.  Therefore, being able to detect bugs is much more important with respect to programmer efficiency.  




 
2. __Read- and writability__: By the 1960's, efficiency made room for clear and concise code (which is sometimes at odds with efficiency).  COBOL and Algol are two examples designed with writability in mind.  COBOL designers attempted to increased the readability by making language more English like, but was too verbose and actually more difficult to read.  Nevertheless, readability was an intended design feature!



### Regularity (Principle of least astonishment)

Regularity refers to the degree that features of the language are integrated.  Regularity is inversely related to restrictions, strange interactions, and surprises.  That is, the greater the regularity, the fewer surprises (least astonishment).  

Regularity is sometimes subdivided into three concepts:
1. __generaltity__: avoids special cases whenever possible.  For example, in C, `==` cannot be used to compare arrays, but must be compared element by element.  That is, the equality operator lacks generality.  Overloading operators such as `+` is an example of language generality.  The operator can be applied to new objects.  
2. __orthogonal design__: allows constructs to be combined in meaningful ways.  
3. __uniformity__


Regularity in programming language design refers to the consistency and predictability of the language's syntax, semantics, and overall structure. It implies that the language follows a set of well-defined rules and patterns that are easy to understand and apply consistently.

Here are some aspects of regularity in programming language design:

* Syntax Consistency: Regular programming languages have consistent and unambiguous syntax rules. The syntax should be designed to minimize surprises and confusion, allowing programmers to write code without unexpected behavior. For example, if a language uses parentheses to denote function calls, it should consistently apply this rule throughout the language.

* Semantic Coherence: Regular programming languages have coherent semantics, meaning that the behavior of language constructs is intuitive and predictable. The language's features and constructs should follow logical and consistent rules, making it easier for programmers to reason about the behavior of their code.

* Orthogonality: Regular languages strive for orthogonality, which means that language features should be independent and composable. Orthogonal languages have a small set of primitive constructs that can be combined in various ways to express complex concepts. This reduces the need for special cases and exceptions, leading to simpler language rules.  orthogonality in programming language design allows different language features to work independently and harmoniously together. This independence and consistency enable programmers to compose code in a more flexible and expressive manner, promoting code readability, maintainability, and reusability.

* Minimal Surprises: Regular languages avoid unexpected behaviors and edge cases. Programmers should be able to anticipate how code will execute based on their understanding of the language's rules. Minimizing surprises helps reduce bugs and makes code easier to maintain and debug.

 * Readability and Writability: Regular languages are designed to be readable and writable, meaning that code written in the language is easy to understand and express. Regularity contributes to the consistency of the language, which makes it easier for programmers to learn, write, and maintain code.


Overall, regularity in programming language design aims to create a language that is predictable, consistent, and intuitive, enabling programmers to write correct and maintainable code more easily.




```
if x > 10 {
    while y < 100 {
        // Code block
    }
}
```
