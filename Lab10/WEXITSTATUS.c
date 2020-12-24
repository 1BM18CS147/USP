#include<unistd.h>
#include<stdio.h>
#include<sys/wait.h>
#include<stdlib.h>
#include<fcntl.h>

int main(int argc,char *argv[])
{
int fd,exitstatus,exitval=0;

fd=open(argv[1],O_WRONLY| O_CREAT |O_TRUNC,0664);
write(fd,"Original Process writing...\n",29);
switch(fork())
{
case 0:write(fd,"Child process writing...\n",25);
       close(fd);
       printf("CHILD:terminating with exit value %d\n",exitval);
       exit(exitval);
default:wait(&exitstatus);
        printf("PARENT: Child Terminated with exit value %d\n",WEXITSTATUS(exitstatus));
        write(fd,"Parent writing...\n",18);
        exit(20);
}
}

