LIBS = -L/usr/local/lib
CC:= gcc
CFLAGS := -Wall

all: gdb strace ltrace

gdb: gdb.c
	$(CC) -g gdb.c -o trygdb

strace: strace.c
	$(CC) -g strace.c -o trystrace

ltrace: ltrace.c
	$(CC) -g ltrace.c -o tryltrace

clean:
	rm trygdb trystrace tryltrace
