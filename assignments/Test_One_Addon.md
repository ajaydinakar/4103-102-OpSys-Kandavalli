#### Multi-Tasking: 
performing multiple tasks (processes) over a certain period of time by executing them concurrently.
Eg:In a computer if there one or more cpu's and more tasks than the cpu's then the os schedules the the tasks based on time with context switching so all the tasks are executed in a time based manner switching between them in time intervals giving an illusion that ther are executing parallelly.
#### Multi-Programming:
The management of multiple processes within a uniprocessor(single cpu) system.
Eg:In a single cpu computer if the machine has the capability of causing an interrupt after a specified time interval, then the operating system will execute each program for a given length of time, regain control, and then execute another program for a given length of time
#### Multi-Processing:
The management of multiple processes within a multiprocessor(multiple cpu’s)system.
#### Multi-Threading:
It is a technique in which a process, executing an application, is
divided into threads that can run concurrently.

#### What is an instruction trace?
An instruction trace for a program is the sequence of instructions that execute for that process.

#### What common events lead to the creation of a process?
common events lead to the creation of a process:
 1. New batch job The OS is provided with a batch job control stream, usually on tape
or disk. When the OS is prepared to take on new work, it will read the
next sequence of job control commands.
 2. Interactive log-on A user at a terminal logs on to the system.
 3. Created by OS to provide a service The OS can create a process to perform a function on behalf of a user program, without the user having to wait (e.g., a process to control
printing).
 4. Spawned by existing process For purposes of modularity or to exploit parallelism, a user program can dictate the creation of a number of processes.

#### What does it mean to preempt a process?
Process preemption occurs when an executing process is interrupted by the processor so that another process can be executed.


#### What is swapping and what is its purpose?
Swapping involves moving part or all of a process from main memory to disk. When none of the processes in main memory is in the.Ready state, the OS swaps one of the blocked processes out on to disk into a suspend queue.

#### Why does Figure 3.9b have two blocked states?
There are two independent concepts: whether a process is waiting on an event (blocked or not), and whether a process has been swapped out of main memory (suspended or not). To accommodate this 2 × 2 combination, we need two Ready states and two Blocked states


#### List four characteristics of a suspended process.
 1. The process is not immediately available for execution.
 2. The process may or may not be waiting on an event. If it is, this blocked condition
is independent of the suspend condition, and occurrence of the blocking 
event does not enable the process to be executed immediately.
 3. The process was placed in a suspended state by an agent: either itself, a parent
process, or the OS, for the purpose of preventing its execution.
 4. The process may not be removed from this state until the agent explicitly orders the removal.

#### List three general categories of information in a process control block
three general categories:
 1. Process identification
 2. Processor state information
 3. Process control information

#### Why are two modes (user and kernel) needed
The user mode has restrictions on the instructions that can be executed and the memory areas that can be accessed. This is to protect the operating system from damage or alteration. In kernel mode, the operating system does not have these restrictions, so that it can perform its tasks.

#### What is the difference between an interrupt and a trap?
Interrupt occurs  due to some sort of event that is external to and independent of the currently running process, such as the completion of an I/O operation,where as a trap relates to an error or exception condition generated within the currently running process, such as an illegal file access attempt.

#### Give three examples of an interrupt.
 1. Clock Interrupt
 2. I/O Interrupt
 3. Memory Fault

#### What is the difference between a mode switch and a process switch?
A mode switch may occur without changing the state of the process that is currently in the Running state. A process switch involves taking the currently executing process out of the Running state in favor of another process. The process switch involves saving more state information


