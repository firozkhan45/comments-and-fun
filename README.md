# comments-and-fun
LEX Program to Identify Comments
Description

This LEX program is designed to recognize comments in C programs. Comments are non-executable parts of code that are written to improve readability and provide explanations. The compiler ignores them during execution.

C supports two types of comments:

Single-line comments → Begin with // and continue until the end of the line.

Multi-line comments → Begin with /* and end with */, spanning across one or more lines.

The program matches the input against patterns for both single-line and multi-line comments and prints a message when a comment is detected.

Working of the Program

Definition Section

A regular expression scom is defined for single-line comments (//.*).

A regular expression mcom is defined for multi-line comments (/* ... */).

Rules Section

If the input matches scom → print: “This is a single-line comment”

If the input matches mcom → print: “This is a multi-line comment”

Otherwise → print: “Not a comment”

Sample Input
// This is a test  
/* This is  
   a multi-line  
   comment */  
x = 5;

Sample Output
This is a single-line comment  
This is a multi-line comment  
Not a comment

LEX Program to Identify Functions
Description

This LEX program is designed to identify function definitions in C source code. Functions in C are reusable blocks of code that perform a specific task.

A typical function definition includes:

A return type (e.g., int, float, void)

A function name (follows identifier rules)

A pair of parentheses (possibly with parameters)

A function body enclosed in { }

The program checks for patterns resembling function definitions and classifies them as functions.

Working of the Program

Definition Section

Regular expressions are defined for:

datatype → matches return types like int, float, char, void

fname → matches valid function names (identifiers followed by ( ))

Rules Section

If the input matches a function definition pattern → print: “This is a function definition”

Otherwise → print: “Not a function”

Sample Input
int add(int a, int b)  
{  
   return a + b;  
}  

x = 10;

Sample Output
This is a function definition  
Not a function
