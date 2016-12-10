#include<stdio.h>
#include<stdlib.h>

int mutex = 1;
int x = 0;
int full = 0;
int empty = 3;

void producer();
void consumer();
int wait(int);
int signal(int);

int main()
{
	int n;
	while(1)
	{
		printf("\n1.Produce\n2.Consume\n3.Exit\n");
		printf("Enter Choice: ");
		scanf("%d",&n);
		switch(n)
		{
			case 1:
			if ((mutex == 1) && (empty != 0))
				producer();
			else
				printf("\nBuffer Full.\n");
			break;
			case 2:
			if ((mutex == 1) && (full != 0))
				consumer();
			else
				printf("\nEmpty Buffer.\n");
			break;
			case 3:
			exit(0);
			break;
		}
	}
	return 0;
}
int wait(int s)
{
	return (--s);
}
int signal(int s)
{
	return (++s);
}
void producer()
{
	mutex = wait(mutex);
	full = signal(full);
	empty = wait(empty);
	x++;
	printf("\nProducer produces %d",x);
	mutex = signal(mutex);
}
void consumer()
{
	mutex = wait(mutex);
	empty = signla(empty);
	full = wait(full);
	printf("Consumer consumes %d",x);
	x--;
	mutex = signal(mutex);
}