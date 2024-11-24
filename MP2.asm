section .data
    km_to_m_ratio dq 1000
    hr_to_s_ratio dq 3600
    msg db "%lf", 10, 0
    value dq 0.0
    temp dq 0.0

section .text
bits 64
default rel
global asmfunc
extern printf

asmfunc:
    ;Initialization of index values.
    MOV RSI, 0
    IMUL RDI, RSI, 8
    CMP RSI, RCX
    JGE while_end
while:
    MOVSD XMM0, [RDX+RDI+8]
    ;CALL print_value   To print value in XMM0 register (for debugging purposes).
    SUBSD XMM0, [RDX+RDI+0]
    ;CALL print_value
    MULSD XMM0, [km_to_m_ratio]
    DIVSD XMM0, [hr_to_s_ratio]
    ;CALL print_value
    DIVSD XMM0, [RDX+RDI+16]
    ;CALL print_value
    CVTSD2SI RAX, XMM0
    MOV qword [R8+RSI*4], RAX
    
    ADD RSI, 1
    IMUL RDI, RSI, 24
    CMP RSI, RCX ;Check if i (RSI) < n (RCX)
    JL while
while_end:
    RET
    
print_value:
    MOVSD [value], XMM0
    MOVSD [temp], XMM0
    
    PUSH RCX ;Push RCX
    PUSH RDX ;Push RDX
    PUSH R8 ;Push R8
    
    SUB RSP, 8*5
    LEA RCX, [msg]
    MOV RDX, [value]
    CALL printf
    ADD RSP, 8*5
    
    POP R8  ;Pop R8
    POP RDX ;Pop RDX
    POP RCX ;Pop RCX
    
    MOVSD XMM0, [temp]
    
    RET
    
    