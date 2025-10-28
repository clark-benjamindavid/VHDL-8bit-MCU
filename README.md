# **VHDL-8bit-MCU**

An 8bit MCU designed within VHDL.
A self driven process allowing me to learn VHDL and develop furthur understanding about what does on inside a computer by building one myself.

## **Tasks**
### **Stage 0: Combinational Basics**
1. **Gates**: `AND`, `OR`, `NOT`, `XOR`, `NAND`, `NOR`
2. **Adders**: `HA`, `FA`
3. **MUX**: `2:1`, `4:1`, `8:1`
4. **DEMUX**: `2:4`,`3:8` 
5. **8-bit Ripple Carry Adder**

### **Stage 1: Arthimertic & Logic**
1. **8-bit Comparator**
2. **8-bit Subtractor**
3. **8-bit ALU** - 
        - `ADD`, `SUB`, `AND`, `OR`, `XOR`, `NOT`
        - `LSL`, `LSR`
        - Status Flags: `Zero`, `Carry`, `Negative`, `Overflow`

### **Stage 2: Sequential Logic & Storage**
1. **DFF**
2. **8-bit Register** - with enable
3. **8-bit Shift Register**
4. **Binary Counter**
5. **Up/Down Counter**
6. **Register File** - 4-8 8-bit registers,
7. **Tri-state Buffers**

### **Stage 3: Memory & Addressing**
1. **RAM** - 256 bytes
2. **ROM** - for program storage
3. **Program Counter (PC)**
4. **Stack Pointer (SP)**
5. **Address decoding logic**

### Stage 4: Control & Instruction Processing
1. **Instruction Register (IR)**
2. **Instruction Decoder**
3. **Simple FSM**
4. **Control Unit (FSM-based)**
        - Fetch-Decode-Execute Cycle
        - Microcode or hardwired control

### Stage 5: Integration & CPU Core
1. **Datapath integration** - ALU + Registers + PC
2. **Connect Control Unit to Datapath** 
3. **Define Instruction Set Architecture (ISA)**
        - Load/Store
        - Arithmetic (ADD, SUB)
        - Logic (AND, OR, XOR)
        - Branches (conditional/unconditional)
        - Jump/Call/Return
4. **CPU integration and testing**

### Stage 6: Peripherals & System
1. **Simple I/O ports**
2. **Timer/Counter**
3. **Interrupt controller (basic)**
4. **UART**
