// Q1. Write a program in C to impliment producer-consumer using semaphore.
#include <stdio.h>
#include <stdlib.h>

int mutex = 1, full = 0, empty = 5, x = 0;

int main() {
  int n;
  void producer();
  void consumer();
  int wait(int);
  int signal(int);
  while (1) {
    printf("\n\n1->Producer\n2->Consumer\n3->Exit\n ");
    scanf("%d", &n);
    switch (n) {
    case 1:
      if ((mutex == 1) && (empty != 0))
        producer();
      else
        printf("Buffer is full!!");
      break;
    case 2:
      if ((mutex == 1) && (full != 0))
        consumer();
      else
        printf("Buffer is empty!!");
      break;
    case 3:printf("Programm end");
      exit(0);
      break;
    default:
      printf("Wrong Choice!!!");
    }
  }
  return 0;
}

int wait(int s) { return (--s); }

int signal(int s) { return (++s); }

void producer() {
  mutex = wait(mutex);
  full = signal(full);
  empty = wait(empty);
  x++;
  printf("Producer produces the item %d", x);
  mutex = signal(mutex);
}

void consumer() {
  mutex = wait(mutex);
  full = wait(full);
  empty = signal(empty);
  printf("Consumer consumes item %d", x);
  x--;
  mutex = signal(mutex);
}
