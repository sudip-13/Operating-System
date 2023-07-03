#include <stdio.h>
#include <stdlib.h>

struct process {
  int pid;
  int burst_time;
  int waiting_time;
  int turnaround_time;
};

int compare(const void *p1, const void *p2) {
  const struct process *process1 = (const struct process *)p1;
  const struct process *process2 = (const struct process *)p2;

  if (process1->burst_time < process2->burst_time) {
    return -1;
  } else if (process1->burst_time > process2->burst_time) {
    return 1;
  } else {
    return 0;
  }
}

int main() {
  int n;
  printf("Enter the number of processes: ");
  scanf("%d", &n);

  struct process *processes = malloc(n * sizeof(struct process));

  printf("Enter the burst time of each process:\n");
  for (int i = 0; i < n; i++) {
    printf("P%d: ", i + 1);
    scanf("%d", &processes[i].burst_time);
    processes[i].pid = i + 1;
  }

  qsort(processes, n, sizeof(struct process), compare);

  processes[0].waiting_time = 0;
  processes[0].turnaround_time = processes[0].burst_time;

  for (int i = 1; i < n; i++) {
    processes[i].waiting_time = processes[i - 1].turnaround_time;
    processes[i].turnaround_time =
        processes[i].waiting_time + processes[i].burst_time;
  }

  int total_waiting_time = 0;
  int total_turnaround_time = 0;

  printf("PID\tBurst Time\tWaiting Time\tTurnaround Time\n");
  for (int i = 0; i < n; i++) {
    printf("%d\t%d\t\t%d\t\t%d\n", processes[i].pid, processes[i].burst_time,
           processes[i].waiting_time, processes[i].turnaround_time);

    total_waiting_time += processes[i].waiting_time;
    total_turnaround_time += processes[i].turnaround_time;
  }

  float avwt = (float)total_waiting_time / n;
  float avtat = (float)total_turnaround_time / n;

  printf("Average Waiting Time: %.2f\n", avwt);
  printf("Average Turnaround Time: %.2f\n", avtat);

  free(processes);

  return 0;
}
