/* no decl */
%{
#include <stdio.h>
int yylex();
void yyerror(const char *);
%}
%%

e : 'x'
  | 'y'
  | '(' e '+' e ')'
  | '(' e '*' e ')'

%%

int yylex() {
	char c = getchar();
	if (c == '\n')
		return 0;
	else
		return c;
}

void main() {
	printf("%i\n", yyparse());
}
