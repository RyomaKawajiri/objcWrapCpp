/*
 * g++ -c main.cc -o main.o
 * g++ -framework Foundation Hello.o main.o -o hello
 */
#include "Hello.h"

int main(){
  Hello hello, hello2("こんにちは，世界!!");
  hello.say_hello();
  hello2.say_hello();
  return 0;  
}
