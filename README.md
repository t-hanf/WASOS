# Writing a Simple Operating System - from Scratch
## About
This repo is a collection of code used for working through the book [Writing a Simple Operating System —from Scratch](https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf) by Nick Blundell. It contains the example programs (Figures) and my solutions for the questions.

## Running the code
To assemble the code run the command `nasm <filename> -f bin -o <output_name>.bin`. Then to execute the program run `qemu-system-i386 <output_name>.bin`.

## Chapters
### Chapter 1
### Chapter 2
### Chapter 3
* [A simple boot sector (Figure 3.1)](Chapter_3/simple_boot_sect.asm)
* [Hello world (Figure 3.2)](Chapter_3/hello_boot_sect.asm)
* [Addressing demonstration (Figure 3.5)](Chapter_3/finding_x.asm)
* [Manipulating the stack (Figure 3.6)](Chapter_3/stack_usage.asm)
* [Making the first function call](Chapter_3/calling_functions.asm)
* [Manipulating the data register (Figure 3.7)](Chapter_3/segment_test.asm)

#### Questions (Solutions)
* [Question 3](Chapter_3/condition_test.asm)
* [Question 4](Chapter_3/hello_goodby.asm)
* [Question 5](Chapter_3/utils.asm)