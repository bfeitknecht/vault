

![[DDCA-u08b-manual.pdf#page=1&rect=104,542,528,613|DDCA-u08b-manual, p.1]]


![[DDCA-u08b-manual.pdf#page=1&rect=86,348,526,399|DDCA-u08b-manual, p.1]]
![[DDCA-u08b-manual.pdf#page=1&rect=93,405,522,466|DDCA-u08b-manual, p.1]]
![[DDCA-u08b-manual.pdf#page=1&rect=94,288,520,346|DDCA-u08b-manual, p.1]]


![[DDCA-LAB06-testbench.pdf#page=8&rect=73,68,696,270|DDCA-LAB06-testbench, p.8]]




---




<div class="page-break" style="page-break-before: always;"></div>


# Report

## (1)
![[DDCA-u08b-report.pdf#page=1&rect=86,327,528,385|DDCA-u08b-report, p.1]]
![[DDCA-u08b-report.pdf#page=1&rect=62,117,532,322|DDCA-u08b-report, p.1]]

Below is the block diagram modified to enable the `lw` and `sw` instruction.
![[ddca-lab08b-block-diagram-modified.png]]


<div class="page-break" style="page-break-before: always;"></div>

## (2)
![[DDCA-u08b-report.pdf#page=2&rect=87,649,529,704|DDCA-u08b-report, p.2]]
![[DDCA-u08b-manual.pdf#page=2&rect=87,261,528,322|DDCA-u08b-manual, p.2]]

To accomplish this, we need another register in the IO address space (`0x7ffX`), where `X`represents any hexadecimal value. The display is driven by the register addressed at `0x7ff0`, the speed by the reg at `0x7ff4` and an additional one bit register could be located at `0x7ff8`. Then, in `top.v` we would have a case distinction on `IOAddr` deciding which input gets saved to what register. There are no additional changes.
