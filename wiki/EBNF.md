
**EBNF** (extended backus naur form) is an abstract syntax specification for language description. It consists of four major parts:
- sequence 
- decision
- repetition
- [[recursion]]

It allows for the construction and verification of symbols through a set or EBNF rules. A typical EBNF assignment is of the form below.
$$
\text{<LHS> (left-hand-side)} \leftarrow \text{RHS (right-hand-side)}
$$

A symbol is legal according to a rule if, and only if all characters in the symbol correspond with the elements in the rule.

> [!info] Rules
> 
> **Sequence**
> *l* <- "l"
> *h* <- "h"
> *s* <- "s"
> *lhs* <- l h s
> 
> **Decision**
> 
> **Repetition**
> 
> **Recurison**
> 
> 






> [!example]+ RHS: Kontrollelemente
> ##### Aufreihung
>  *one* $\Leftarrow$ *zero*  *one*
>  ten $\Leftarrow$ *one*  *zero*
> ##### Auswahl
> *dig* $\Leftarrow$ 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 $\rightarrow$ | = or
> *bin* $\Leftarrow$ *one* | *zero* $\rightarrow$ | = or
> 
> abc1 $\Leftarrow$ a (b | c) $\rightarrow$ () = and
> abc2 $\Leftarrow$ (a b) | c $\rightarrow$ () = and
> abc1 $\neq$ abc2
> 
> init1 $\Leftarrow$ B [A] R  $\rightarrow$ [] = optional
> init2 $\Leftarrow$ B (A | $\epsilon$) R $\rightarrow$ $\epsilon$ = nothing
> init1 = init2






> [!example]+ RHS: EBNF Kontrollelemente
> ##### Wiederholung
> ones $\Leftarrow$ {1} $\longrightarrow$ $0$..$\infty$ Wiederholungen
> **zeros** $\Leftarrow$ {0} $\longrightarrow$ $0$..$\infty$ Wiederholungen
> **digits** $\Leftarrow$ **digit** {**digit**} $\longrightarrow$ $1$..$\infty$ Wiederholungen
> **integer** $\Leftarrow$ [+|-] **digits**


