#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/wait.h>

int main()
{

pid_t pid;

pid=fork();

if(pid==0)
{
printf("In child process\n");
execl("/bin/ls","ls","-l",(char *)0);
}

else
{
wait(0);
printf("In parent process\n");
printf("ls not executed\n");
}
return 0;
}

