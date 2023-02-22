Application.exe:main.o big2.o fact.o rev.o fibonacci.o add.o sort.o big3.o palindrome.o
	gcc -o Application.exe main.o big2.o fact.o rev.o fibonacci.o add.o sort.o big3.o palindrome.o
main.o:main.c
	gcc -c main.c
big2.o:big2.c
	gcc -c big2.c
fact.o:fact.c
	gcc -c fact.c
rev.o:rev.c
	gcc -c rev.c
fibonacci.o:fibonacci.c
	gcc -c fibonacci.c
add.o:add.c
	gcc -c add.c
sort.o:sort.c
	gcc -c sort.c
big3.o:big3.c
	gcc -c big3.c
palindrome.o:palindrome.c
	gcc -c palindrome.c
clean:
	rm -rf *.o

