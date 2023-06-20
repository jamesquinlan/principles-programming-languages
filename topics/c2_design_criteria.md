# Programming Language Design Criteria

Consider the following questions:
1.  What is a good programming language design?
2.  What criteria are used to determine if it is good?

Language __abstraction__ and __complexity control__ are critical requirements for a modern programming language.

According to Louden & Lambert (2011), a language is "successful" if
1.  Acheieves designers goals
2.  Attains widespread use and support in application areas
3.  Serves as a model for other languages that are successful

There are several __factors of success__ for a language.  For example, 
* the Internet helped Java and Python's success in addition to their free distribution;
* UNIX is mainly responsible for the success of C;  
* Smalltalk, although not widespread use, has served as a model for many object-oriented programming languages;
* Is the language designed by a small group of individuals (C, C++) or a large community (COBOL)?


## General Design Criteria

Readability, abstraction, and complexity control are central to most design decisions.

1. __Efficiency of execution__: early machines were slow.  FORTRAN was specifically designed to generate compact code and fast execution.  FORTRAN is directly mapped to machine code.  

Static-typed variables create more efficient execution.  Otherwise, it must be checked during runtime.  For example, in the Java code below, `i` is declared as an integer (static typing), 

```java
int i = 10;
```

However, in the Python code (duck typing), the system must check the type before executing operations.  

```python
i = 10
```

__Programmer efficiency__ is another consideration.  How quickly can a programmer develop a program?  This directly relates to the programming language's __expressiveness__.  However, there is usually a trade-off between programmer efficiency and execution efficiency.  For example, by not having to provide explicit data types (e.g., `int x;`) or use more syntax (e.g., `if (x > 0){}`), programmers can code more efficiently.  However, the strict typing of variables increases execution efficiency.  However, it has been found that coding is only about 10% of the process, whereas debugging and maintaining is around 90%.  Therefore, detecting bugs is much more important to programmer efficiency.  

The **efficiency principle** in programming language design emphasizes the importance of creating languages and language features that promote the efficient execution of programs.  The efficiency principle aims to minimize unnecessary computational overhead, reduce resource usage, and optimize performance.  Here are some key considerations related to the efficiency principle:

* **Execution Speed**: An efficient programming language design focuses on enabling the fast execution of programs.  This includes designing efficient control flow mechanisms, minimizing overhead in function calls, and optimizing common operations.  In addition, language features that minimize unnecessary runtime checks, promote efficient data access patterns, and provide low-level control can contribute to faster execution.

* **Memory Efficiency**: Memory usage is critical to efficiency.  An efficient language design incorporates memory management mechanisms that minimize memory leaks, reduce fragmentation, and optimize memory allocation and deallocation.  It may include features such as automatic memory management (garbage collection), support for manual memory management, or advanced memory optimization techniques.

* **Resource Utilization**: Efficient language design aims to optimize system resources.  This includes considerations for efficient usage of CPU cycles, I/O operations, network resources, and other system-level resources.  Language features that enable asynchronous or parallel programming, efficient I/O handling, and resource-aware abstractions contribute to better resource utilization.

* **Compilation and Interpretation Efficiency**: Efficiency also encompasses the compilation or interpretation process of the language itself.  An efficient language design considers techniques for optimizing the compilation or interpretation process to generate high-performance executable code.  This may involve optimizations such as just-in-time (JIT) compilation, static analysis, code transformations, or other compiler/interpreter techniques.

* **Language Portability**: An efficient language design aims to be portable across different hardware architectures and operating systems without sacrificing performance.  It may provide abstractions or mechanisms that allow programs written in the language to efficiently utilize system-specific features when available while also ensuring fallback mechanisms for platforms without such features.

* **Performance Predictability**: Efficiency in language design includes providing predictable performance characteristics.  Developers should reasonably expect how code will perform under different scenarios.  Consistent performance characteristics allow developers to reason about the efficiency of their code, optimize bottlenecks, and make informed design decisions.

Efficiency is often a balancing act, as optimizing for one aspect may introduce trade-offs in other areas, such as code readability, maintainability, or development productivity.  Therefore, an efficient language design must carefully consider these trade-offs and balance performance and other essential factors.

By adhering to the efficiency principle, programming languages can empower developers to write high-performance code, efficiently use system resources, and build scalable and responsive software systems.


 
2.  __Read- and writability__: By the 1960s, efficiency made room for clear and concise code (sometimes at odds with efficiency).  COBOL and Algol are two examples designed with writability in mind.  COBOL designers attempted to increase the readability by making the language more English-like, but it was too lengthy and difficult to read.  Nevertheless, readability was an intended design feature!



### Regularity (Principle of least astonishment)

Regularity refers to the degree that features of the language are integrated.  Regularity is inversely related to restrictions, strange interactions, and surprises.  The greater the regularity, the fewer surprises (least astonishment).  

Regularity is sometimes subdivided into three concepts:
1. __generaltity__: avoids special cases whenever possible.  For example, in C, `==` cannot be used to compare arrays but must be compared element by element.  That is, the equality operator lacks generality.  Overloading operators such as `+` is an example of language generality.  The operator can be applied to new objects.  
2.  __orthogonal design__: allows constructs to be combined in meaningful ways.  
3. __uniformity__


Regularity in programming language design refers to the consistency and predictability of the language's syntax, semantics, and overall structure.  It implies that the language follows well-defined rules and patterns that are easily understood and applied consistently.

Here are some aspects of regularity in programming language design:

* Syntax Consistency: Regular programming languages have consistent and unambiguous syntax rules.  The syntax should be designed to minimize surprises and confusion, allowing programmers to write code without unexpected behavior.  For example, if a language uses parentheses to denote function calls, it should consistently apply this rule throughout the language.

* Semantic Coherence: Regular programming languages have coherent semantics, meaning that the behavior of language constructs is intuitive and predictable.  The language's features and constructs should follow logical and consistent rules, making it easier for programmers to reason about the behavior of their code.

* Orthogonality: Regular languages strive for orthogonality, meaning language features should be independent and composable.  Orthogonal languages have a small set of primitive constructs that can be combined in various ways to express complex concepts.  This reduces the need for exceptional cases and exceptions, leading to more straightforward language rules.  Orthogonality in programming language design allows different features to work independently and harmoniously.  This independence and consistency enable programmers to compose code more flexibly and expressively, promoting code readability, maintainability, and reusability.

* Minimal Surprises: Regular languages avoid unexpected behaviors and edge cases.  Programmers should be able to anticipate how code will execute based on their understanding of the language's rules.  Minimizing surprises helps reduce bugs and makes code easier to maintain and debug.

* Readability and Writability: Regular languages are designed to be readable and writable, meaning that code written in the language is easy to understand and express.  Regularity contributes to the language's consistency, making it easier for programmers to learn, write, and maintain code.


Overall, **regularity** in programming language design aims to create a predictable, consistent, and intuitive language, enabling programmers to write correct and maintainable code more easily.




```
if x > 10 {
    while y < 100 {
        // Code block
    }
}
```
