%{
	#include "expr3.h"
%}

%%

" " /* ignore spaces */
\n      return 0;
[a-z]   return VAR;
[0-9]+  return NUM;
.       return yytext[0];

%%
