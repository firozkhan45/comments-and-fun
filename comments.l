//comments
%{
#include <stdio.h>
%}

%%
"//".*                                   { printf("Single line comment : %s\n", yytext); }
"/*"([^*]|\*+[^*/])*\*+"/"              { printf("Multi line comment : %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*\(\)    { printf("Function : %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}
