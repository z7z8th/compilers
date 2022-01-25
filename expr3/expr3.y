/* no decl */
%{
#include <stdio.h>
int yylex();
void yyerror(const char *);
%}

%token VAR
%token NUM

%%

e : VAR
  | NUM
  | '(' e '+' e ')'
  | '(' e '*' e ')'

%%

/* int yylex() {
	char c = getchar();
	if (c == '\n')
		return 0;
	else
		return c;
} */

int main() {
	printf("%i\n", yyparse());
}
