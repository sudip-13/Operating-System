#include <stdio.h>

int main() {
  int n = 4, i;
  int burst_time[n], waiting_time[n], turnaround_time[n];
  float avg_waiting_time = 0, avg_turnaround_time = 0;
  printf("Enter burst time for each process:\n");
  for (i = 0; i < n; i++) {
    printf("P%d: ", i + 1);
    scanf("%d", &burst_time[i]);
  }
  waiting_time[0] = 0;
  for (i = 1; i < n; i++) {
    waiting_time[i] = waiting_time[i - 1] + burst_time[i - 1];
  }
  for (i = 0; i < n; i++) {
    turnaround_time[i] = waiting_time[i] + burst_time[i];
  }
  for (i = 0; i < n; i++) {
    avg_waiting_time += waiting_time[i];
    avg_turnaround_time += turnaround_time[i];
  }
  avg_waiting_time /= n;
  avg_turnaround_time /= n;

  printf("Process\tBurst Time\tWaiting Time\tTurnaround Time\n");
  for (i = 0; i < n; i++) {
    printf("P%d\t%d\t\t%d\t\t%d\n", i + 1, burst_time[i], waiting_time[i],
           turnaround_time[i]);
  }
  printf("Average Waiting Time: %0.2f\n", avg_waiting_time);
  printf("Average Turnaround Time: %0.2f\n", avg_turnaround_time);

 return 0;
}
