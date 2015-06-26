/*@
  @ assigns \nothing;
  @*/
extern int puts(const char*);

#define UNUSED(expr) do { (void)(expr); } while (0);

/*@ 
  @ assigns \nothing;
  @*/ 
int main(int argc, char** argv){
  UNUSED(argc)
  UNUSED(argv)
	
  /*See "The Java® Virtual Machine Specification"
    Java SE 7 Edition
    Chapter 6.3. Virtual Machine Errors
    https://docs.oracle.com/javase/specs/jvms/se7/html/jvms-6.html#jvms-6.3*/
  puts("OutOfMemoryError");
  return(-1);
}
