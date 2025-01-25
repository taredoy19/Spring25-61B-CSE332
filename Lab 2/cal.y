%{
#include<stdio.h>
int yyerror(char *s);
int yylex();
%}

%token ADD INT_NUM SEMI
%start cal

%%
cal: INT_NUM ADD INT_NUM SEMI {printf("valid string\n");}
;
%%

int main()
{
    yyparse();
    printf("Parsing Finished\n");
}

int yyerror(char *s)
{
    fprintf(stderr, "error:%s\n", s);
}