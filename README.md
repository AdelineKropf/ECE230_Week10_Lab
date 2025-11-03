# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### Why can we not just use structural Verilog to implement latches?
     A latch requires a combinatorial loop, which allows it to remember its output. 
     Without the combinatorial loop the latch would continuously update and would 
     have no ability to remember its output without the input continuously being 
     present. Structural Verilog uses assign for outputs which creates continuous 
     assignment. For Verilog with a Basys3 board it will error out, because it will
     consider it an uncontrolled combinatorial loop. So, you have to use behavioral
     Verilog, because behavioral Verilog allows you to describe the intended 
     behavior. It uses constructs that specifically tell the synthesis tool to create
     a sequential circuit using memory.

### What is the meaning of always @(*) in a sensitivity block?
     The meaning of always @(*) in a sensitivity block is 

### What importance is memory to digital circuits?
