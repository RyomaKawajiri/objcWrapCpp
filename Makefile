hello: Hello.o main.o
	g++ -framework Foundation Hello.o main.o -o hello

main.o: main.cc Hello.h
	g++ -c main.cc

Hello.o: Hello.mm Hello.h
	g++-4.2 -x objective-c++ -c Hello.mm

clean:
	rm -rf *~ *.o
