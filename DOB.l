%{
#include <stdio.h>
%}

DIGIT       [0-9]
YEAR        19{DIGIT}{2}|20{DIGIT}{2}
MONTH       0[1-9]|1[0-2]
DAY         0[1-9]|[12][0-9]|3[01]

%%
{YEAR}-{MONTH}-{DAY} { printf("Valid date of birth: %s\n", yytext);
}

.|\n { printf("Invalid date of birth: %s\n", yytext);
}

%%

int yywrap()
{
return 1;
}

int main() {
printf("Enter the date of birth in 'year-month-date' :");
    yylex();
}