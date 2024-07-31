

### #Kontrollelemente

- Aufreihung - Sequence
- Entscheidung - Decision
- Wiederholung - Repetition
- Rekursion - Recursion

### #EBNF

Extended Backus (Forscher) Naur (Forscher) Form

- Beschreibt die Syntax einer Sprache
	- Liefert eine Menge von Symbolen - Konstruktion
	- Erlaubt die Prüfung von Symbolen - Verifikation

###  #EBNF-Beschreibung

Menge von EBNF Regeln wobei die Reihenfolge unwichtig ist.

### #EBNF-Regeln

LHS (Left Hand Side) $\Leftarrow$ RHS (Right Hand Side)


> [!example]+ RHS: Wert
>  *zero* $\Leftarrow$ 0
>  *one* $\Leftarrow$ 1

> [!example]+ RHS: EBNF Name
>  *null* $\Leftarrow$ zero
>  *eins* $\Leftarrow$ one

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





### #EBNF 

### #EBNF-Regeln 


> [!example]+ RHS: EBNF Kontrollelemente
> ##### Wiederholung
> ones $\Leftarrow$ {1} $\longrightarrow$ $0$..$\infty$ Wiederholungen
> **zeros** $\Leftarrow$ {0} $\longrightarrow$ $0$..$\infty$ Wiederholungen
> **digits** $\Leftarrow$ **digit** {**digit**} $\longrightarrow$ $1$..$\infty$ Wiederholungen
> **integer** $\Leftarrow$ [+|-] **digits**

### #EBNF-Beschreibung 

Einfache (ganze) Sprache mit 
- **unwichtiger** Reihenfolge (Konvention **Einfach** $\rightarrow$ **Komplex**)
- **unwichtigem** Namen (Namen sind **exklusiv** und gehören nur zu einer Regel)

### #EBNF-Verifizierung

Symbol legal gemäss einer Regel: Alle Zeichen des Symbols stimmen mit den Elementen der Regel überein.
- Selbe Zeichen
- Selbe Reihenfolge

##### Vorgehen:

- Links $\rightarrow$ Rechts
- Zeichen für Zeichen
- Keine Übrigen Elemente der Regel
- Keine Übrigen Symbole

> [!example]+ EBNF Verifizierung
> digit: 6 Legal | 66 Illegal
> [opperation] digit: +6 Legal | 6 Legal | -6 Legal | 66 Illegal
> 


### Formales Vorgehen der EBNF Verifizierung

1. Ersetze einen Namen LHS durch die Regel RHS und vereinfache

> [!example]+ EBNF Verifizierung Formal
> *Integer* $\Leftarrow$ [+|-] *digit* {*digit*} $\Rightarrow$ + 128
> *Integer* $\Leftarrow$ [+] *digit* {*digit*} $\Rightarrow$ + 128
> *Integer* $\Leftarrow$ + *digit* {*digit*} $\Rightarrow$ + 128
> *Integer* $\Leftarrow$ + 1 {*digit*} $\Rightarrow$ + 128
> *Integer* $\Leftarrow$ + 1 2 {*digit*} $\Rightarrow$ + 128
> *Integer* $\Leftarrow$ + 1 2 8 $\Rightarrow$ + 128

2. Ableitungsbaum

> [!example]+ EBNF Verifizierung Formal
> "Mermaid Tree Diagram ep_V2"

### EBNF Sonderzeichen Als Symbol 

Wenn wir ein Sonderzeichen als normales Zeichen in eine EBNF Regel integrieren möchten muss es mit einer Box umrandet werden. 
$$\framebox{ \{\ } \space \framebox{ [ }\space  \framebox{ | }$$

### #EBNF-Äquivalent

EBNF Regeln sind gleichwertig wenn sie in jedem Kontext gleich sind. Äquivalente EBNF-Beschreibungen erkennen die gleichen legalen und illegalen Symbole.

$$int \Leftarrow sign \space \{\ digit \}\ \not\Leftrightarrow int \Leftarrow \space sign \space digit \space \{\ digit \}\ $$

### #Mengen-Äquivalent

Mengen sind gleichwertig wenn sie die gleichen Elemente enthalten. äquivalente Mengen müssen **nicht die gleiche Reihenfolge** oder **nicht die gleiche Anzahl an gleichen Elementen** aufweisen.

$$ \{\ 1, 2, 3, 4, 5 \}\ \Leftrightarrow \{\ 1,2,3,4,5,1,2,3,4,5 \}\ $$

### #Syntax-Semantik

- **Syntax**: Beschreibt die Sprache um die Form fest zu legen mit bestimmten Regeln.
- **Semantik**: Beschreibt die Bedeutung die vom Syntax ausgedrückt wird.

EBNF-Beschreibungen machen ausschliesslich Aussagen zum **Syntax**.

##### integer_set

$$integer \_\ list \Leftarrow integer \space \{\ \space , \space integer \space \}\ $$
$$integer \_\ set \Leftarrow \framebox{ \{\ } \space integer \_\ list \space \framebox{ \}\ }$$

##### canonic_int (non-zero integer)

$$canonic \_\ int \Leftarrow [+|-] \space nonzerodigit \space \{\ nonzerodigit \space \}\ | \space 0 $$