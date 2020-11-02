# 8-bit Pipelined CPU Simulated (James Sharman's design)
This project is a Logic Simulation of [James Sharman's 8-bit Pipelined CPU](https://www.youtube.com/watch?v=3iHag4k4yEg&amp;list=PLFhc0MFC8MiCDOh3cGFji3qQfXziB9yOw) built with [Digital](https://github.com/hneemann/Digital).

This project (once complete) will allow for complete simulation of the CPU (and some peripherals).

## Motivation

There are two major techniques for being able to simulate a CPU on a desktop computer.  

The first way is to write software to implement all the instructions, and to build a simulator that parses the assembly and executes those instructions.  This technique is very straightforward, and allows for very fast simulation of a program.  It's a great way to test your programs before having to run them on actual hardware, giving you a much faster "developer feedback loop" (the loop that defines the time between writing code and seeing the results of that code).  It's also excellent in that you can simulate in near realtime.

The downside of this technique is that it takes the hardware aspect out of the picture, and while it provides a small amount of value to helping you design the CPU--that value is very limited.  Every time you add hardware or instructions to the CPU, you have to implement software versions of those new instructions, and those two tasks are very duplicative.  Sometimes you'll implement some instruction in software first, thinking it will be easy in hardware, only to find out it wasn't, and you have to rethink the whole design--after you've already become attached to having that new instruction.  Similarly, this technique provides some value as a learning tool for people to play with the architecture without having to build the hardware, but the experience is very limited.  The person using it never gets to experience *why* an instruction is implemented, or why it's implemented in a particularly way.  Because there's no interaction with the hardware, it really just ends up feeling like a less efficient way of writing code.

The other way to simulate a CPU is to re-implement the building blocks of the CPU in software, then build a simulation of the CPU using those building blocks--matched 1:1 with the actual hardware of the CPU.  This is a lot more work and generally isn't as fast, but it provides a much richer experience to the user.  This is the technique that this project uses.  This project would never have been possible without the hard work of the [Digital](https://github.com/hneemann/Digital) project, providing a framework and implementation of most of the building blocks of the CPU, and obviously without the hard work of [James Sharman](https://www.youtube.com/c/weirdboyjim/)'s [8-bit Pipelined CPU](https://www.youtube.com/watch?v=3iHag4k4yEg&amp;list=PLFhc0MFC8MiCDOh3cGFji3qQfXziB9yOw) design.

One advantage of this technique is that you can run pieces of the CPU build in isolation and interact with their inputs manually, seeing how their outputs behave.  Another advantage is that you can write extensive test cases for each of those modules, so that you're relatively confident in the concepts of your design and how they behave under a variety of scenarios--that of course is no guarantee that the hardware will behave exactly the same, but it will at least narrow your problems down to a hardware vs conceptual design issue.  Additionally, it allows you to experiement with those circuits, trying different "hardware" implementations to see how it would behave before building it out on a breadboard.  This, to me, is the real value of this project.  The time commitment and cost of building the entire CPU in hardware is prohibitive for many, and my aim is to reduce that barrier to entry and allow more people to learn from the great work that went into this CPU design and build.

Additionally, selfishly, I plan on building this CPU's conceptual design in hardware, but with my own hardware designs for some of the modules--and ultimately, I'd like to experiment with different microcode and my own assembler and compiler, potentially building a pipelined "z80" or pipelined "6502" processor, where the instructions match those architectures, but the implementation of the hardware is different.

# Work In Progress

I've just started building this, so I haven't built everything yet, and I haven't fully tested everything that's here.

You can find the .dig files (use [Digital](https://github.com/hneemann/Digital) to open them) in the respective directories for each major component section of the CPU.

Right now, I'm generally leaning toward using modules for any ICs that are more complex than single gates--and staying true to the IC choices used in the build, with exception to simple gates.  I'll likely fork this for my own build, where I'll likely choose differeng ICs, simply because it's what I have on hand, or personal preference, but I'll try to keep this repository matched with the official build.

# Contribution

I very much welcome contributions and forks of this project!  If you'd like to help with the primary build, please reach out to me.  If you'd like to fork it and use it to implement something different, feel free!

# Tests
## First mostly-successful run!!!
![Test](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/tests/test0-annotated.svg)


# Main CPU
## CPU
![CPU](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/Cpu.svg)

# Pipeline

## Stage 0 - Fetch
![Stage 0](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/pipeline/pipeline-stage0.svg)

## Stage 1
![Stage 1](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/pipeline/pipeline-stage1.svg)


## Stage 2
![Stage 2](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/pipeline/pipeline-stage2.svg)

# ALU

## LHS (Shift Unit)
![Shift](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/alu/shift.svg)

## Adder
![Adder](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/alu/adder.svg)

## Flags
![Flags](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/alu/flags.svg)

# Core

## Bus Control
![Bus Control](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/mainbus/buscontrol.svg)

## 8-bit General Purpose Register
![8-bit GPR](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/mainbus/reg-8bit-generalpurpose.svg)

## 16-bit Up/Down/Load Register (PCRA0, PCRA1, SP, SI, DI)
![16-bit Up/Down/Load](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/mainbus/reg-16bit-updownload.svg)

## Constant Register
![Constant Register](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/mainbus/reg-constant.svg)

## Transfer Register
![Transfer Register](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/mainbus/reg-16bit-xfer.svg)

## Memory
![Memory](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/mainbus/memory.svg)

