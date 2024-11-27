# LBYARCH Machine Project 2
This project is a course requirement for the subject Laboratory Computer Architecture (LBYARCH). It involves implementing a kernel to perform the dot product of two vectors using both C programming language and x86-64 assembly, with a comparative analysis of their execution times.

## Authors
Andrei Palonpon
Daniel Gavrie Clemente

Overview
The project computes the dot product of two vectors, with the following features:

Functional scalar SIMD registers are utilized.
Scalar SIMD floating-point instructions are employed for optimization.
Comparative analysis between C and x86-64 assembly implementations.
Input
A scalar integer n that represents the length of the vectors.
Two single-precision float vectors, A and B.
Result stored in sdot, a single-precision float.
Outputs
Execution Times: Measure and compare the performance of C and Assembly implementations.
Sanity Checks: Validate correctness by ensuring both implementations produce the same result.
Performance Comparison (Sample Results)
For
𝑛
=
2
20
n=2
20
:
Assembly Time: 0.003 seconds
C Time: 0.004 seconds
For
𝑛
=
2
24
n=2
24
:
Assembly Time: 0.019 seconds
C Time: 0.046 seconds
Assembly consistently outperforms C in execution speed due to its lower-level nature and reduced overhead.

Setup Instructions
Clone the repository:
bash
Copy code
git clone https://github.com/AndreiPalonpon/LBYARCH_MP2.git
cd LBYARCH_MP2
Open the solution file (.sln) in Visual Studio.
Configure the asmfunc.asm file:
Set the correct properties in the Visual Studio environment.
Run main.c with either Debug or Release mode.
(Optional) Modify the vector size exponent in main.c at line 43 for testing different inputs.
Analysis
Assembly code is faster in Debug mode due to its direct optimization and lack of debugging overhead.
In Release mode, performance differences are minimized, but Assembly may still show advantages for larger inputs.
