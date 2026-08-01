# SPI Controller using Verilog HDL

## Project Overview

This project implements a Serial Peripheral Interface (SPI) Master Controller using Verilog HDL. The controller supports synchronous serial communication between a master and a slave device. The design was developed and verified in Xilinx Vivado using behavioral simulation.

---

## Features

- SPI Master Controller
- 8-bit Serial Data Transfer
- Full Duplex Communication
- Synchronous Communication
- MOSI and MISO Support
- Chip Select (CS)
- Serial Clock (SCLK)
- Behavioral Simulation in Vivado
- Modular RTL Design

---

## SPI Interface

| Signal | Description |
|---------|-------------|
| CLK | System Clock |
| RESET | Active High Reset |
| DATA_IN | Parallel Input Data |
| MOSI | Master Output Slave Input |
| MISO | Master Input Slave Output |
| SCLK | SPI Serial Clock |
| CS | Chip Select |
| DATA_OUT | Received Parallel Data |

---

## Block Diagram

```
          +-----------------------+
          |   SPI Controller      |
          |                       |
CLK ----->|                       |
RESET --->|                       |
DATA_IN ->|                       |
MISO ---->|                       |
          |                       |
          | MOSI                 |
          | SCLK                 |
          | CS                   |
          | DATA_OUT             |
          +-----------------------+
```

---

## Design Flow

1. Reset Controller
2. Load Input Data
3. Assert Chip Select
4. Generate Serial Clock
5. Shift Data through MOSI
6. Receive Data through MISO
7. Complete 8-bit Transfer
8. Deassert Chip Select

---

## RTL Design

The SPI Controller consists of:

- Clock Generation
- Shift Register
- Bit Counter
- Control Logic
- Serial Data Transmission
- Serial Data Reception

---

## Simulation

Simulation was carried out using **Xilinx Vivado**.

### Test Case

Input Data

```
10101010
```

Received Data

```
10101010
```

Simulation confirms:

- Correct Clock Generation
- Proper Chip Select Operation
- Correct Serial Data Transmission
- Successful Data Reception

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Behavioral Simulation

---

## Applications

- EEPROM Interface
- Flash Memory
- ADC
- DAC
- Sensors
- FPGA Communication

---

## Future Improvements

- SPI Modes 0–3
- Configurable Clock Divider
- Multi-Slave Support
- FIFO Interface
- Interrupt Generation

---

