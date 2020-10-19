# jamessharman-8bit-cpu-sim
Logic Simulation of [James Sharman's 8-bit Pipelined CPU](https://www.youtube.com/watch?v=3iHag4k4yEg&amp;list=PLFhc0MFC8MiCDOh3cGFji3qQfXziB9yOw)

Built with [Digital](https://github.com/hneemann/Digital)

# Work In Progress

I've just started building this, so I haven't built everything yet, and I haven't fully tested everything that's here.

You can find the .dig files (use [Digital](https://github.com/hneemann/Digital) to open them) in the respective directories for each major component section of the CPU.

Right now, I'm generally leaning toward using modules for any ICs that are more complex than single gates--and staying true to the IC choices used in the build, with exception to simple gates.  I'll likely fork this for my own build, where I'll likely choose differeng ICs, simply because it's what I have on hand, or personal preference, but I'll try to keep this repository matched with the official build.

# Pipeline

## Stage 0 - Fetch
![Stage 0](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/pipeline/pipeline-stage0.svg)

## Stage 1
![Stage 1](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/pipeline/pipeline-stage1.svg)


# ALU
![ALU](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/alu/alu.svg)

## LHS (Shift Unit)
![Shift](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/alu/shift.svg)

## Adder
![Adder](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/alu/adder.svg)

## Flags
![Flags](https://raw.githubusercontent.com/jamon/jamessharman-8bit-cpu-sim/main/alu/flags.svg)

