
Linear Algebra concerns itself with [[vector|vectors]], [[matrix|matrices]] and what you can do with them. This enables us to model motion in space, efficiently compute with big data and much more. It is a powerful tool for [[abstraction]] in many different areas of math, computer science and engineering.


# Info

- [ ] bonus quiz 🔁 every week 📅 2024-12-24
- [-] bonus quiz 🔁 every week 📅 2024-12-17 ❌ 2024-12-18
- [x] bonus quiz 🔁 every week 📅 2024-12-10 ✅ 2024-12-11
- [x] bonus quiz 🔁 every week 📅 2024-12-03 ✅ 2024-12-04
- [-] bonus quiz 🔁 every week 📅 2024-11-26 ❌ 2024-11-28
- [x] bonus quiz 🔁 every week 📅 2024-11-19 ✅ 2024-11-19
- [x] bonus quiz 🔁 every week 📅 2024-11-12 ✅ 2024-11-13
- [-] bonus quiz 🔁 every week 📅 2024-11-05 ❌ 2024-11-04
- [x] bonus quiz 🔁 every week 📅 2024-10-29 ✅ 2024-10-29
- [x] bonus quiz 🔁 every week 📅 2024-10-22 ✅ 2024-10-21
- [-] bonus quiz 🔁 every week 📅 2024-10-15 ❌ 2024-10-11
- [x] bonus quiz 🔁 every week 📅 2024-10-08 ✅ 2024-10-03
- [x] bonus quiz 🔁 every week 📅 2024-10-01 ✅ 2024-09-25
- [x] bonus quiz 🔁 every week 📅 2024-09-24 ✅ 2024-09-22
- [x] exercise sheet 🔁 every week 📅 2024-12-17 ✅ 2024-12-17
- [x] exercise sheet 🔁 every week 📅 2024-12-10 ✅ 2024-12-17
- [x] exercise sheet 🔁 every week 📅 2024-12-03 ✅ 2024-12-11
- [x] exercise sheet 🔁 every week 📅 2024-11-26 ✅ 2024-11-28
- [-] exercise sheet 🔁 every week 📅 2024-11-19 ❌ 2024-11-19
- [-] exercise sheet 🔁 every week 📅 2024-11-12 ❌ 2024-11-13
- [x] exercise sheet 🔁 every week 📅 2024-11-05 ✅ 2024-11-04
- [-] exercise sheet 🔁 every week 📅 2024-10-29 ❌ 2024-10-29
- [x] exercise sheet 🔁 every week 📅 2024-10-22 ✅ 2024-10-23
- [x] exercise sheet 🔁 every week 📅 2024-10-15 ✅ 2024-10-11
- [-] exercise sheet 🔁 every week 📅 2024-10-08 ❌ 2024-10-09
- [-] exercise sheet 🔁 every week 📅 2024-10-01 ❌ 2024-10-09
- [-] exercise sheet 🔁 every week 📅 2024-09-24 ❌ 2024-10-09

    
#todo: scrape weekly covered subjects and summarize


# Script
- 1st part: [[LinAlg-script-1.pdf]]
- 2nd part: [[LinAlg-script-2.pdf]]


# Lectures

### W00
![[LinAlg-v-w00]]

### W01
![[LinAlg-v-w01]]

### W02
![[LinAlg-v-w02]]

### W03
![[LinAlg-v-w03]]

### W04
![[LinAlg-v-w04]]

### W05
![[LinAlg-v-w05]]

### W06
![[LinAlg-v-w06]]

### W07
![[LinAlg-v-w07]]

### W08
![[LinAlg-v-w08]]

### W09
![[LinAlg-v-w09]]

### W10
![[LinAlg-v-w10]]

### W11
![[LinAlg-v-w11]]

### W12
![[LinAlg-v-w12]]

### W13
![[LinAlg-v-w13]]

### W14
![[LinAlg-v-w14]]



# "

change of basis commutative diagram

```tikz
\usepackage{tikz-cd}
\begin{document}

\begin{tikzcd}
	{V'} &&&& {W'} \\
	\\
	\\
	& X && Y \\
	\\
	\\
	V &&&& W
	\arrow["{A'}", from=1-1, to=1-5]
	\arrow[from=1-1, to=4-2]
	\arrow[from=1-5, to=4-4]
	\arrow["{\psi_{W}}", dashed, tail, from=1-5, to=7-5]
	\arrow[from=4-2, to=1-1]
	\arrow["T", from=4-2, to=4-4]
	\arrow[from=4-2, to=7-1]
	\arrow[from=4-4, to=1-5]
	\arrow[from=4-4, to=7-5]
	\arrow["{\psi_{V}}", dashed, tail, from=7-1, to=1-1]
	\arrow[from=7-1, to=4-2]
	\arrow["A", from=7-1, to=7-5]
	\arrow[from=7-5, to=4-4]
\end{tikzcd}

\end{document}
```
