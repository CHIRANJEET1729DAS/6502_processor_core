# 6502_processor_core


This repo is a part of my study .So it contains all the the essential components of a 6502 processor core implemented one by one and addition to that some of the folders have additional different types of that particular component coded individually too

**Don't take it serious** no testbenches included


Phase 1: Core Components


 ## Program Counter (PC)

A 16-bit register.
Increments after each clock cycle or sets a new value for jumps/branches.
Inputs: clk, reset, jump_address, jump_signal.
Output: Current pc value.

 ## Instruction Memory (IMEM)

A memory block to store the program instructions.
64 KB space.
Inputs: address (16 bits), write_enable, data_in.
Output: instruction (8 bits).

 ## Instruction Decoder (IDU)

Decode the opcode to generate control signals.
Inputs: opcode (8 bits).
Outputs: Signals for ALU operation, memory access, register updates, etc.
Phase 2: Processing Units

 ## Arithmetic Logic Unit (ALU)

Handles arithmetic and logical operations.
Inputs: operand1 (8 bits), operand2 (8 bits), operation_code (3 bits).
Outputs: result (8 bits), flags (zero_flag, carry_flag, etc.).

 ## Register File

Contains:
Accumulator (A) for arithmetic operations.
Index registers (X, Y) for addressing.
Stack Pointer (SP) for stack operations.
Status Register (P) for flags.
Inputs: data_in, load_signals, reset, clk.
Outputs: Register values.
Phase 3: Control Logic

 ## Finite State Machine (FSM)

Control the processor's workflow: Fetch → Decode → Execute → Write Back.
Inputs: clk, reset, opcode.
Outputs: Control signals for each stage.

 ## Memory Interface

Connects the processor to RAM/ROM.
Handles read/write operations.
Inputs: address, data_in, write_enable.
Output: data_out.
Phase 4: Integration

 ## Data Bus

8-bit bidirectional bus for communication between components.
 
 ## Address Bus

16-bit unidirectional bus for memory addressing.
