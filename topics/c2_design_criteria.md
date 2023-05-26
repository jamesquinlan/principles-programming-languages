# Programming Language Design Criteria

Consider the following questions:
1. What is a good programming language design?
2. What criteria is used to determine if it is good?

Language abstractino and complexity control were key requirements for a modern programming language.

According to Louden & Lambert (2011), a language is "successful" if
1. Acheieves designers goals
2. Attains widespread use and support in application areas
3. Serves as a model for other languages that are successful

There are several factors that help a language be successful.  For example, the Internet helped Java and Python's success in addition to their free distribution.  UNIX is largely responsible for the success of C.  Smalltalk, although not widespread use, has served as a model for many object-oriented programming languages.  

Is the language designed by small group of individuals (C, C++) or a large community (COBOL)?



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
3.  
