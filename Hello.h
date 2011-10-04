#ifndef __HELLO_H__
#define __HELLO_H__

class Hello{
private:
#ifdef __OBJC__
  id greeting_text;
  NSAutoreleasePool *pool;
#else
  void *greeting_text;
  void *pool;
#endif

public:
  Hello();
  ~Hello();
  Hello(const char* initial_greeting_text);
  void say_hello();
};

#endif
