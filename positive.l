%{
#include <stdio.h>
%}

%%
[0-9]+        printf("Positive number\n");
-[0-9]+       printf("Negative number\n");
.             printf("Invalid input\n");
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}
