PATH := /opt/local/bin:${PATH}

all: expr4

expr4:
	bison --defines -o expr4.c expr4.y
	flex -o expr4lex.c expr4.lex
	gcc -o expr4.out expr4.c expr4lex.c -L/opt/local/lib -ly -lfl

clean:
	-rm -fv *.[ch] *.out