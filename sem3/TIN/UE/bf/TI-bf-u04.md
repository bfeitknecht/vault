
Basil Feitknecht, 23-922-099
Camil Schmid, 23-944-234
Dennis Küenzi, 21-559-315


# 10
![[TI-e-u04.pdf#page=1&rect=67,489,533,572|TI-e-u04, p.1]]


mod 4 : 0, 1, 2, 3

0
11
00
101
000
1...01
0...00

where $\mathrm{Number}(\lambda)=0$


```mermaid
flowchart LR

classDef hidden display: none;

S:::hidden

q_((q_))
q0(((q0)))
q1((q1))
q2((q2))
q3(((q3)))
q4((q4))
q5((q5))


S --> q_

q_ -->|"0"| q0
q_ -->|"1"| q1

q1 -->|"1"| q3 -->|"1"| q3
q1 -->|"0"| q5
q3 -->|"0"| q5 -->|"1"| q3 
q5 -->|"0"| q5

q0 -->|"0"| q0 -->|"1"| q2


```


# 11
![[TI-e-u04.pdf#page=1&rect=66,354,531,451|TI-e-u04, p.1]]



# 12

![[TI-e-u04.pdf#page=1&rect=75,225,532,308|TI-e-u04, p.1]]



![[TI-e-u04.pdf#page=1&rect=76,157,533,224|TI-e-u04, p.1]]
