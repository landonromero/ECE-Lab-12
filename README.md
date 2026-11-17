# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Landon Romero and Evan Walther

## Summary
In this lab we built two different implementations of the same state machine. The first implementations uses 5 bits while the second one uses 3. We used D flip flops to store data and change states based on current and past states.

## Lab Questions

### Compare and contrast One Hot and Binary encodings
Binary and one hot represent the same state machine but are different implementations. Binary uses 3 bits to represent all of the states which uses fewer flip flops making it more complicated but efficient. One hot uses one bit for each state making it easier to understand and implement but less efficient. 

### Which method did your team find easier, and why?
We found the one hot state machine to be easier because only one bit out of five can represent each state. Binary requires a Kmap to derive making it more complicated to find the equations. 

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
You would used binary for efficiency reasons. Binary uses less flip flops so it uses less resources overall. So if you have less powerful hardware you use binary otherwise you can use one hot which is easier to understand.
