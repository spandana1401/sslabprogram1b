%{
#include<stdio.h>
#include<stdlib.h>
%}
%token ENTER A B
%%
stml:s ENTER{printf("valid grammer");exit(0);}
s:C B|B
C:A C|A;
%%
void main()
{
printf("enter the string\n");
yyparse();
}
int yyerror()
{
printf("Invalid expression\n");
}
