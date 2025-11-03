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
     The part of the sensitivity block after the @ symbol is called the sensitivity 
     list and informs the program which inputs can affect the output of the block.
     When you use * as the sensitivity list it tells the program that it can use 
     anything on the right side of the assignment as an input in the block. Using
     @(*) makes it so that the block reacts to any input change.

### What importance is memory to digital circuits?
     The importance of memory to digital circuits is that memory allows a digital 
     circuit to maintain its output, even when its input is no longer there, thus it
     allows for sequential logic instead of just combinatorial logic. Sequential 
     logic is vital for things like computers. Memory allows for clock control which
     is when values can only be updated at specific time intervals, edge triggering 
     (only being triggered at the edge of intervals) which prevent unwanted 
     instantaneous changes, and for things like data processing and manipulation.
