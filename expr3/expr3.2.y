/* no decl */
%{
#include <stdio.h>
int yylex();
void yyerror(const char *);
%}

%union { //yylval is either a char or an int
	char var;
	int num;
}

%token <var> VAR;
%token <num> NUM;

%%

e : VAR
  | NUM
  | '(' e '+' e ')'
  | '(' e '*' e ')'

%%

#ifdef NOFLEX
int yylex() {
	int c = getchar();

	while (c==' ') c = getchar();
	if (c == '\n') return 0;
	if (c >= 'a' && c <= 'z')
		return VAR;
	while (c >= '0' && c <= '9') {
		c = getchar();
		if (c < '0' || c > '9'){
			ungetc(c, stdin);
			return NUM;
		}
	}
	return c;
}
#endif

int main() {
	printf("%i\n", yyparse());
}
