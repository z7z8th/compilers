PATH := /opt/local/bin:${PATH}

all: expr3.2

expr3:
	bison --defines -o expr3.c expr3.y
	flex -o expr3lex.c expr3.lex
	gcc -o expr3.out expr3.c expr3lex.c -L/opt/local/lib -ly -lfl

expr3.2:
	bison --defines -o expr3.2.c expr3.2.y
	flex -o expr3.2lex.c expr3.2.lex
	gcc -o expr3.2.out expr3.2.c expr3.2lex.c -L/opt/local/lib -ly -lfl

noflex:
	bison -o expr3.c expr3.y
	gcc -DNOFLEX -o expr3.out expr3.c -L/opt/local/lib -ly

clean:
	-rm -fv *.[ch] *.out