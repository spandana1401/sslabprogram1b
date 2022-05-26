%{
#include<stdio.h>
#include<stdlib.h>
%}
%token num ENTER
%left '+''-'
%left '*''/'
%%
input:expr ENTER {printf("Result is %d\n",$$);exit(0);}
expr:expr'+'expr{$$=$1+$3;}
|expr'-'expr{$$=$1-$3;}
|expr'*'expr{$$=$1*$3;}
|expr'/'expr{if($3==0){printf("divide by zero");exit(0);}else $$=$1/$3;}
|'('expr')'{$$=$2;}
|'-'expr{$$=-$2;}
|num{$$=$1;};
%%
void main()
{
printf("Enter the expression\n");
yyparse();
}
int yyerror()
{
printf("Invalid expression\n");
}
