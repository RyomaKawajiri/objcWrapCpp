/* Hello.m
 * g++-4.2 -x objective-c++ -c Hello.mm -o Hello.o
 */

#import <Foundation/Foundation.h>
#include "Hello.h"

Hello::Hello(){
  pool = [[NSAutoreleasePool alloc] init];
  greeting_text = @"Hello, world!!";

}

Hello::~Hello(){
  [pool release];
}

Hello::Hello(const char* initial_greeting_text) {
  greeting_text = [[NSString alloc] initWithUTF8String:initial_greeting_text];
}

void Hello::say_hello(){
  printf("%s\n", [greeting_text UTF8String]);
}
