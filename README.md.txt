# Smart Parking System Using Verilog 

## 📘 Project Overview
This project implements a **Smart Parking System (SPS)** using **Verilog **.  
The system monitors entry and exit of vehicles, opens/closes the gate, and indicates when the parking is full using a **Finite State Machine (FSM)**.  
A testbench is included to simulate random entry and exit events for functional verification.

---

## 📂 Project Structure

Smart_Parking_System/
│
├── src/
│ ├── sps.v # Smart Parking System RTL design
│ └── tb_sps.v # Testbench for verification
│
├── docs/
│ └── block_diagram.png # Optional block diagram
│
└── README.md



## ❗ Importance of the Project
- Helps manage parking efficiently and prevents congestion.  
- Demonstrates FSM design in digital systems.  
- Core concept for automation in smart cities.  
- Provides hands-on learning for Verilog HDL and simulation techniques.  

---

## 🎯 Need for This Project
- Essential for **digital design labs** and **VLSI practice**.  
- Demonstrates **state-based control logic**.  
- Useful for building **smart embedded systems**.  
- Helps beginners understand **system automation using Verilog**.  

---

## ✨ Features
- Finite State Machine (FSM) based gate control  
- Monitors available parking space  
- Signals when parking is full  
- Simulates random entry and exit events  
- Fully synthesizable and simulation-ready  

---

## 🧪 Example Scenario

| Entry Event | Exit Event | Car Count | Gate Open | Full Signal |
|------------|------------|-----------|-----------|-------------|
| 1          | 0          | 1         | 1         | 0           |
| 1          | 0          | 3         | 0         | 1           |
| 0          | 1          | 2         | 1         | 0           |

---

## 🛠 How to Run Simulation Using EDA tool

Add both design files and the testbench to your Verilog simulator

Compile and Run

Verify outputs

Using **ModelSim / Questa**:

vlog sps.v tb_sps.v
vsim tb
run -all


## 📚 Learning Outcomes
- Finite State Machine (FSM) implementation in Verilog  
- Controlling digital systems using state logic  
- Handling combinational and sequential operations  
- Testbench writing and simulation  
- Basics of smart embedded system design  

---

## 🏁 Conclusion
This Smart Parking System project provides a practical example of **FSM-based digital design**, useful for parking management, smart cities, and embedded system learning.

---

