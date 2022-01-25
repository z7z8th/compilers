%{
	#include "expr3.2.h"
%}

%%

" " /* ignore spaces */
\n      return 0;
[a-z]   { yylval.var =  yytext[0];
		  return VAR; }
[0-9]+  { yylval.num = atoi(yytext);
		  return NUM; }
.       return yytext[0];

%%
