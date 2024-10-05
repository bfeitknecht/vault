
looks bad!
$\vdash_{M}^*$

$$
\begin{align}
(q, w) \mathrel{\large{\vdash}}_{M}^* (q, \lambda) \\
(q, w) \mathrel{\Large{\vdash}}_{M}^* (q, \lambda) \\
(q, w) \mathrel{\huge{\vdash}}_{M}^* (q, \lambda) \\
(q, w) \mathrel{\Huge{\vdash}}_{M}^* (q, \lambda) \\
\\ \\
\newcommand{\step}{\mathrel{{\Large \vdash}}} \\
A \step_{M}^{*} B \\
\R
\end{align}
$$


mathjax can't import arbitrary latex packages because their sty files rely on onther packages etc. it's a whole clusterfuck!!!



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
\\ \\
\newcommand{\step}[1]{\mathrel{
{\Large \vdash}_{}}}
\\ \\
 \\
 \\
(q, w) \step_{\kern -1em \smash{\raise .33em \tiny{M}}}^{\kern -.73em {\tiny *}} (q, \lambda) \\
(q, w) \step_{M}^{*} (q, \lambda) \\
\end{align}
$$