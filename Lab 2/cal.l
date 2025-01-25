%option noyywrap

%{
#include "cal.tab.h"
%}

digit [0-9]
ws  [ \n]
add [+]
%%
";" {return(SEMI);}
{add} {return(ADD);}
({digit}+) {return(INT_NUM);}
{ws} {}
%%