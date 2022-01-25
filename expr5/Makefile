PATH := /opt/local/bin:${PATH}

all: expr5

expr5:
	bison --defines -o expr5.c expr5.y
	flex -o expr5lex.c expr5.lex
	gcc -o expr5.out expr5.c expr5lex.c -L/opt/local/lib -ly -lfl

clean:
	-rm -fv *.[ch] *.out