

> [!quote]+ Cheatsheet
>>[!idea]- Stop Conditions DI Method
>> - $0$ in D column
>> - we can integrate a row
>> - a row repeats (don't care sign)
>
> - different directions integrate / derivative
> - monotonic & bounded $\implies$ convergent
> - quotient / product rule for derivative
> - general log / exp rules
> - arc trig values
>   


>[!attention] Study this more!
> - fractional integration
> - power series
> - integration by parts
> - convergence, convexity, monotonicity




## Add to cheatsheet

$$
\begin{align}
 & \text{Rectangular:} & z &= a+bi \\
 & \text{Polar:} & z &= r(\cos(\theta)+i\sin(\theta)) \\
 & \text{Exponential} & z &= r \cdot e^{i\theta} \\
 \\
& \text{Modulus:} & r &= |z| = \sqrt{ a^2 +b^2}  \\
& \text{Argument:} & \theta &= \arg(z) = \arctan\left( \frac{b}{a} \right) \\ 
\end{align}
$$

| $\theta$       | $0$<br>$0$ | $30^\circ$<br>$\frac{\pi}{6}$ | $45^\circ$<br>$\frac{\pi}{4}$ | $60^\circ$<br>$\frac{\pi}{3}$ | $90^\circ$<br>$\frac{\pi}{2}$ | $120^\circ$<br>$\frac{2\pi}{3}$ | $150^\circ$<br>$\frac{5\pi}{6}$ | $180^\circ$<br>$\pi$ | $270^\circ$<br>$\frac{3\pi}{2}$ |
| -------------- | ---------- | ----------------------------- | ----------------------------- | ----------------------------- | ----------------------------- | ------------------------------- | ------------------------------- | -------------------- | ------------------------------- |
| $\sin(\theta)$ | $0$        | $\frac{1}{2}$                 | $\frac{\sqrt{ 2 }}{2}$        | $\frac{\sqrt{ 3 }}{2}$        | $1$                           | $\frac{\sqrt{ 3 }}{2}$          | $\frac{1}{2}$                   | $0$                  | $-1$                            |
| $\cos(\theta)$ | $1$        | $\frac{\sqrt{ 3 }}{2}$        | $\frac{\sqrt{ 2 }}{2}$        | $\frac{1}{2}$                 | $0$                           | $-\frac{1}{2}$                  | $-\frac{\sqrt{ 3 }}{2}$         | $-1$                 | $0$                             |
| $\tan(\theta)$ | $0$        | $\frac{\sqrt{ 3 }}{3}$        | $1$                           | $\sqrt{ 3 }$                  | $\text{n/a}$                  | $-\sqrt{ 3 }$                   | $-\frac{\sqrt{ 3 }}{3}$         | $0$                  | $\text{n/a}$                    |

**stop conditions DI method**
- zero in D column
- we can integrate a row
- a row repeats (total sign inverse)


$$
\begin{align}
&\overset{\frac{d}{dx}}{\rightarrow} \\
\\
&\overset{\int dx}{\leftarrow} \\
\\
\lim_{ x \to 0 } x^x &= \lim_{ x \to 0 } e^{x\ln x} \rightarrow 1 \\
\\
x^k &= e^{k \ln x}, x>0 \\
\\
D(x) &= \begin{cases}
1, x \in \mathbb Q \\
0, x \not\in \mathbb Q
\end{cases} \quad, \not\in C^{0} \\
\\
\frac{u}{u\pm 1} &= 1 \mp \frac{1}{u \pm 1} \\
\\
\frac{u\pm 1}{u} &= 1 \pm\frac{1}{u} \\
\\
\sin(x)^2 &= \frac{1-\cos(2x)}{2} \\
\\
\cos(x)^2 &= \frac{1+\cos(2x)}{2} \\
\end{align}
$$

$$
\begin{align}
f: X \overset{I}{\rightarrow} Y ,\ g: Y \overset{S}{\rightarrow} Z &\implies f\circ g: X \overset{B}{\rightarrow} Z \\
\\
\text{$DI$ Method:} \\ 
\text{0. don't integrate $\ln(x)$} \\
\text{1. zero in $D$ column} \\
\text{2. row repeats (sign inverse)} \\
\text{3. can integrate a row} \\
\\
f_{e/o} \pm g_{e/o} &= h_{e/o} \\
f_{e/o} \cdot g_{e/o} &= h_{e/o}
\end{align}
$$


- The [product](https://en.wikipedia.org/wiki/Multiplication "Multiplication") of two even functions is an even function.
    - That implies that product of any number of even functions is an even function as well.
- The product of two odd functions is an even function.
- The product of an even function and an odd function is an odd function.
- The [quotient](https://en.wikipedia.org/wiki/Division_(mathematics) "Division (mathematics)") of two even functions is an even function.
- The quotient of two odd functions is an even function.
- The quotient of an even function and an odd function is an odd function.

### Composition

[[edit](https://en.wikipedia.org/w/index.php?title=Even_and_odd_functions&action=edit&section=8 "Edit section: Composition")]

- The [composition](https://en.wikipedia.org/wiki/Function_composition "Function composition") of two even functions is even.
- The composition of two odd functions is odd.
- The composition of an even function and an odd function is even.
- The composition of any function with an even function is even (but not vice versa).




## That's it




___
# Exercises


>[!quote]- (1)
> $$
> \begin{align}
> \lim_{ x \to 0 } \frac{\sin(x)}{x} &\overset{x \rightarrow 0}{\rightarrow} \frac{0}{0} \implies \frac{\cos(x)}{1} \overset{x \rightarrow 0}{\rightarrow} 1
> \end{align}
> $$
> ```desmos-graph
> y = \sin(x)
> y = \cos(x)
> ```


$$
\begin{align}
\lim_{ x \to \infty } x\cos(x) &= \text{n. a.} \\
 \\
 \\
\lim_{ x \to \infty } \frac{-x^5+x^3+\cos{x}+e^{-x}}{5x^4+1} &= \frac{-5x^4+3x^2-\sin{x}-e^{-x}}{20x^3} \\
&= \frac{-20x^3+6x^2-\cos{x}+e^{-x}}{60x^2} \\
&= \frac{-60x^2+12x+\sin{x}-e^{-x}}{120x} \\
&= \frac{-120x+12+\cos{x}+e^{-x}}{120} \\
&= -120-\sin{x}-e^{-x} \implies \text{n.a.} \\
 \\
 \\
\lim_{ x \to 1 } \frac{\ln{\cos{x^2-1}}}{x-e^x} &= 
\end{align}
$$