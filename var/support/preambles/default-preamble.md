
$$
\newcommand{\N}{\mathbb N}
\newcommand{\Q}{\mathbb Q}
\newcommand{\R}{\mathbb R}


$$


```latex
\newcommand{\mtrx}[2]{
	\begin{bmatrix} 
		\@for\i:=1\to#1\do{% 
			\@for\j:=1\to#2\do{% 
				\ifnum\i=1\and\j=1 \else & \fi 
				\phantom{x} 
			}\\ 
		} 
	\end{bmatrix}
}
```