
problem:looks bad!

$$
\begin{align}
(q, w) \mathrel{\huge{\vdash}}_{M}^* (q, \lambda) \\
\\ \\
\newcommand{\step}{\mathrel{{\Large \vdash}}} \\
A \step_{M}^{*} B \\
\end{align}
$$





$$
\begin{align}
\newcommand{\step}[2]{\mathrel{
\overset
    {\kern 0.2em \smash{\raise -0.7em {\tiny #2}}}
    {\underset
        {\kern 0.2em \smash{\raise 0.83em {\tiny #1}}}
        {\Large \vdash}}
}} \\
(q, w) \step{M}{*} (q, \lambda) \\
\end{align}
$$


$$
\begin{align}
\newcommand{\step}{\mathrel{{\Large \vdash}}} \\
 \\

(q, w) \step_{\kern -1em \smash{\raise .33em \tiny{M}}}^{\kern -.73em {\tiny *}} (q, \lambda) \\
\end{align}
$$



```latex
\newcommand{\step}[1]{\mathrel{ \\
{\Large \vdash}_{\kern -1em \smash{\raise .33em \tiny{#1}}}
}}
\newcommand{\steps}[1]{\mathrel{ \\
\step{#1}^{\kern -.88em {\tiny *}}
}}
```

$$
\begin{align}
\newcommand{\step}[1]{\mathrel{ \\
{\Large \vdash}_{\kern -1em \smash{\raise .33em \tiny{#1}}}
}}
\newcommand{\steps}[1]{\mathrel{ \\
\step{#1}^{\kern -.88em {\tiny *}}
}}
a \step{M} b \\ a \steps{M} b
\end{align}
$$






old preamble:
```latex
\newcommand{\Z}{\mathbb Z}
\newcommand{\N}{\mathbb N}
\newcommand{\Q}{\mathbb Q}
\newcommand{\R}{\mathbb R}
\newcommand{\C}{\mathbb C}
\newcommand{\O}{\mathcal O}
\newcommand{\square}{\square}
\newcommand{\etc}{\text{etc.}}
\newcommand{\def}{\overset{\text{def.}}{=}}
\newcommand{\empty}{\varnothing}
\newcommand{\E}{\mathbb E}
\newcommand{\nimpl}{\kern.6em\not\kern -.6em \implies}
```



