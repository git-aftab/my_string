CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Wpedantic -g -Iinclude 
	-fsanitize=address,undefined

.PHONY: test clean

test: build/test_mystring
	./build/test_mystring

build/test_mystring: src/mystring.c tests/test_mystring.c include/mystring.h
	@mkdir -p build 
	$(CC) $(CFLAGS) src/mystring.c tests/test_mystring.c -o $@

clean: 
	rm -rf build