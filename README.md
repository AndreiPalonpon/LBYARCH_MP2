<h1 align="center">LBYARCH MP 2</h1>
<br>
<p>
This project is a course requirement for the subject Laboratory Computer Architecture (LBYARCH). It involves implementing a kernel to perform the dot product of two vectors using both C programming language and x86-64 assembly, with a comparative analysis of their execution times.
</p>


# Table of Contents

- [Contributions](#contributions)
- [Overview](#overview)
- [Installation](#installation)
- [Usage](#usage)


## Contributions
Section: S18 </br>
Course: LBYARCH </br>
Contributors:
- Daniel Gavrie Clemente
- Andrei Palonpon

## Overview
The project computes the dot product of two vectors, with the following features:
- Functional scalar SIMD registers are utilized.
- Scalar SIMD floating-point instructions are employed for optimization.
- Comparative analysis between C and x86-64 assembly implementations.
  
## Installation

To get a local copy up and running, follow these simple steps.

1. Clone the repo:
    ```bash
    git clone https://github.com/yourusername/sample-project.git
    ```
2. Change directory to the project folder:
    ```bash
    cd CCAPDEVMCO
    ```
3. Install the necessary packages:
    ```bash
    npm install
    ```
- [[More Details]](https://github.com/11daniel/CCAPDEVMCO/blob/8e1125bee7dda03d3d923b15d50e461691964bef/READ.txt)
## Usage

To run the application, use the following command:
1.
```bash
nasm -f win64 MP2.asm
gcc -c MP2_C.c -o MP2_C.obj -m64
gcc MP2_C.obj MP2.obj -o MP2_C.exe -m64
MP2_C.exe
```
2.
```bash
gcc -c MP2_C.c -o MP2_C.obj -m64
```
3.
```bash
gcc MP2_C.obj MP2.obj -o MP2_C.exe -m64
```
4.
```bash
MP2_C.exe
```

