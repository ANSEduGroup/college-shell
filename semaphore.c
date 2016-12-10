#include<stdio.h>
#include<sys/types.h>
ifdef __WIN32__
#include<windows.h>
#else
#include<unistd.h>
#endif
#include<stdlib.h>
int main()
{
	int x;
	printf("\nHello\n");
	x=fork();
	printf("\nValue of x=%d",x);
	return 0;
}
pid_t fork()
{
	printf("\nBye\n");
	Sleep(5);
	return 7;
}