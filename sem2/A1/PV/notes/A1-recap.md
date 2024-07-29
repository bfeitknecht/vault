
> [!quote]+ Cheatsheet
>>[!idea]- Stop Conditions DI Method
>> - $0$ in D column
>> - we can integrate a row
>> - a row repeats (don't care sign)
>
> - different directions integrate / derivative
> - monotonic & bounded $\iff$ convergent
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


$$
\begin{align}
\pi \\
- \pi \\
\\
\frac{\pi}{2} \\
\\
- \frac{\pi}{2} \\
\end{align}
$$

$$
\begin{align}
& \overset{\infty}{\rightarrow}\infty \\
& \overset{-\infty}{\rightarrow}0 \\
& \overset{0}{\rightarrow}-\infty \\
& \overset{\pm\frac{\pi}{2}}{\rightarrow}\text{n/a} \\
& \overset{\pm\infty}{\rightarrow}\text{n/a} \\
& \overset{\infty}{\rightarrow}\frac{\pi}{2} \\
& \overset{-\infty}{\rightarrow}-\frac{\pi}{2} \\
\end{align}
$$

$$
\begin{align}
\exp(x) \\ \\
\ln(x) \\ \\
\sin(x) \\ \\
\cos(x) \\ \\
\tan(x) \\ \\
\arcsin(x) \\ \\
\arccos(x) \\ \\
\arctan(x)
\end{align}
$$

$$
\begin{align}
& \frac{d}{dx} [f(x) \cdot g(x)] = f'(x) g(x) + f(x) g'(x) \\
& \frac{d}{dx} \left[\frac{f(x)}{g(x)}\right] = \frac{f'(x) g(x) - f(x) g'(x)}{[g(x)]^2} \\
& \frac{d}{dx} f(g(x)) = f'(g(x)) \cdot g'(x) \\
& \frac{d}{dx} a^x = a^x \ln(a) \\
& \frac{d}{dx} \log_a(x) = \frac{1}{x \ln(a)} \\
 \\
 \\
& \int u \, dv = uv - \int v \, du \\
& \int f(g(x)) g'(x) \, dx = \int f(u) \, du \\
& \int a^x \, dx = \frac{a^x}{\ln(a)} + C \\
\end{align}
$$



| $\theta$       | $0$<br>$0$ | $30^\circ$<br>$\frac{\pi}{6}$ | $45^\circ$<br>$\frac{\pi}{4}$ | $60^\circ$<br>$\frac{\pi}{3}$ | $90^\circ$<br>$\frac{\pi}{2}$ | $120^\circ$<br>$\frac{2\pi}{3}$ | $150^\circ$<br>$\frac{5\pi}{6}$ | $180^\circ$<br>$\pi$ | $270^\circ$<br>$\frac{3\pi}{2}$ |
| -------------- | ---------- | ----------------------------- | ----------------------------- | ----------------------------- | ----------------------------- | ------------------------------- | ------------------------------- | -------------------- | ------------------------------- |
| $\sin(\theta)$ | $0$        | $\frac{1}{2}$                 | $\frac{\sqrt{ 2 }}{2}$        | $\frac{\sqrt{ 3 }}{2}$        | $1$                           | $\frac{\sqrt{ 3 }}{2}$          | $\frac{1}{2}$                   | $0$                  | $-1$                            |
| $\cos(\theta)$ | $1$        | $\frac{\sqrt{ 3 }}{2}$        | $\frac{\sqrt{ 2 }}{2}$        | $\frac{1}{2}$                 | $0$                           | $-\frac{1}{2}$                  | $-\frac{\sqrt{ 3 }}{2}$         | $-1$                 | $0$                             |
| $\tan(\theta)$ | $0$        | $\frac{\sqrt{ 3 }}{3}$        | $1$                           | $\sqrt{ 3 }$                  | $\text{n/a}$                  | $-\sqrt{ 3 }$                   | $-\frac{\sqrt{ 3 }}{3}$         | $0$                  | $\text{n/a}$                    |

$$
\begin{align}
\lim_{ x \to 0 } x^x &= \lim_{ x \to 0 } e^{x\ln x} \rightarrow 1 \\
 \\
x^d = e^{a \ln x}
\end{align}
$$

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