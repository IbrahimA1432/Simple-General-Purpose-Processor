## Project Overview
This project is a **Simple General Purpose Processor or a GPU**, designed using VHDL and other hardware description techniques. The processor is capable of handling basic arithmetic, logic operations, state management, and input-output controls. It is implemented with various components such as an Arithmetic Logic Unit (ALU), Finite State Machine (FSM), decoders, latches, and seven-segment display drivers.

## Features
### Processor Capabilities
- **Arithmetic Operations**: Supports basic operations such as addition, subtraction, and bitwise operations.
- **State Management**: Utilizes a Finite State Machine (FSM) for control flow.
- **Decoding**: Includes 4-to-16 decoders and custom decoder logic for instruction handling.
- **Latch-based Data Storage**: Employs latches to store and transfer data efficiently between operations.
- **Display Output**: Outputs results to a seven-segment display, showing operation results or current state in a human-readable format.

## Architecture Overview
The processor's architecture is modular and designed around the following components:

### Main Components
- **ALU (Arithmetic Logic Unit)**:
  - The core processing unit that performs arithmetic and logical operations. The ALU takes operands as input and provides the result of operations like addition, subtraction, or AND/OR bitwise logic.
  - Implemented in multiple versions for assignment purposes (**ALU.vhd**, **ALU2.vhd**, **ALU3.vhd**), each providing different sets of functionalities.
- **Finite State Machine (FSM)**:
  - Controls the processor’s execution flow based on inputs and states. It manages how the processor transitions between different stages of operation.
- **Decoders**:
  - The design includes both general-purpose 4-to-16 decoders and custom decoder logic (**decod.vhd**, **fourToSixteenDecod.vhd**) to translate instruction sets and control signals.
- **Latches**:
  - Latch circuits (**latch1.vhd, latch2.vhd**) are used for holding data, allowing synchronization and transfer of information between different clock cycles.
- **Seven-Segment Display Drivers**:
  - Displays processor output on a **seven-segment display**. The design uses a custom driver (**sseg.vhd**, **sseg_modified.vhd**) to convert binary data into readable numbers/characters for the display.

## File Descriptions
### VHDL Files:
- **ALU.vhd**, **ALU2.vhd**, **ALU3.vhd**: Implements the core ALU functionality.
- **FSM.vhd**: Defines the Finite State Machine controlling processor states.
- **decod.vhd**, **fourToSixteenDecod.vhd**: Handles instruction decoding for the processor.
- **latch1.vhd**, **latch2.vhd**: Implements data latches for storing intermediate results.
- **sseg.vhd**, **sseg_modified.vhd**: Seven-segment display drivers that convert binary output to displayable format.

### Block Diagram Files:
- **Problem1.bdf, Problem2.bdf, Problem3.bdf**: Block diagram files that visually represent the architecture of the processor, showing how each component connects and interacts. These can be opened for viewing in the Quartus II Software.

## Running the Project
To run this project:

1. Clone the repository and open it in your VHDL-compatible simulation environment (Quartus II was originally used during development).
2. Compile the VHDL files (.vhd) in the order of their dependency.
3. Load the Block Diagram Files (.bdf) if needed to visualize the processor’s architecture.
4. Simulate the processor using testbench files (if available), or interact with it through inputs. This can be done for troubleshooting on the software, such as confirming boolean signal waveforms.
5. Upload appropriately to FPGA board (Altera Cyclone II EP2C35F672C6 was used during development and pin assignments are made accordingly)

## Future Enhancements
- **Instruction Set Expansion**: Add support for more complex instructions, such as multiplication or division.
- **Pipeline Design**: Introduce pipelining to improve instruction throughput and efficiency.
- **Memory Integration**: Expand memory modules for better data storage and retrieval.

## Notes
I had a lot of fun creating this processor! This project is the accumulaton of hours of hard work that paid off greatly.
