#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<stdlib.h>

int main()
{
int pid;
 pid=fork();
 if(pid>0)
 {
  sleep(3);
  printf("PARENT process -- PID: %d\tPPID: %d\t CHILD PID: %d\n",getpid(),getppid(),pid);
 }
  else if(pid==0)
  {
    printf("CHILD process -- PID: %d\t PPID:%d\n",getpid(),getppid());
  }
  else{
   printf("Fork error!");
  }
  return 0;

}

