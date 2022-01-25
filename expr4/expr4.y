/* no decl */
%{
#include <stdio.h>
int yylex();
void yyerror(const char *);
%}

%{
	int env[256];
%}

%union { //yylval is either a char or an int
	char var;
	int num;
}

%token <var> VAR;
%token <num> NUM;

%type <num> e;
%%

s : e                { printf("%i\n", $1);}

e : VAR              { $$ = env[$1]; }
  | NUM              { $$ = $1; }
  | '(' e '+' e ')'  { $$ = $2 + $4; }
  | '(' e '*' e ')'  { $$ = $2 * $4; }

%%

int main() {
	for (int i=0; i<=0xFF; i++)
		env[i] = i;
	yyparse();
}
