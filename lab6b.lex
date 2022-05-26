%{
#include "y.tab.h"
#include<stdio.h>
extern int yylval;
%}
%%
"int"|"float"|"printf"|"void"* {printf("keywod is %s\n",yytext);return KEYWORD;}
[a-zA-Z]+ {printf("identifier is %s\n",yytext);return ID;}
[+\-\*\/]* {printf("operators is %s\n",yytext);return OP;}
[0-9]+ {yylval=atoi(yytext);printf("Number is %d\n",yylval);return DIGIT;}

. ;
%%
