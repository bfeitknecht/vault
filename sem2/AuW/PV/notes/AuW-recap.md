---
cards-deck: sem2::AuW::bf
---


## Misc

> [!attention]- Exam Points
> - 40p Moodle Quiz: ähnliche oder gleiche Fragen wie Miniquiz
> - 20p Programmieren, vermutlich:
> 	Eine Flow-Aufgabe
> 	Eine Wahrscheinlichkeits-Aufgabe (bedingte Wahrscheinlichkeit und DP)
> - 20p Schriftlich, vermutlich:
> 	~10p Wahrscheinlichkeitsaufgabe (Erwartungswert, Varianz)
> 	~10p Beweise 

> [!attention]+ Study This
> - matchings, perfect matchings
> - augmenting paths
> - low, dfs
> - cut vertex, cut edge
> - coloring!!
> - a "to the left of" bc partial order relation
> - convex hull
> - algorithms (runtime, idea)
> - 
> 



## Graphs

>[!quote]- Connectedness
>
> ![[AuW-L01-connectedness.pdf#page=18&rect=58,655,940,745|AuW-L01-connectedness, p.18]]
> 
> ![[AuW-L03-TSP-PvsNP.pdf#page=7&rect=131,516,735,629|AuW-L03-TSP-PvsNP, p.7]]
> 
>>[!quote]- k-vertex-connected
>>![[AuW-w01-cycles.pdf#page=9&rect=77,548,449,732|AuW-w01-cycles, p.9]]
>
>>[!quote]- k-edge-connected
>>![[AuW-w01-cycles.pdf#page=9&rect=88,64,476,205|AuW-w01-cycles, p.9]]
>

>[!quote]- Hamilton Tour
>![[AuW-script.pdf#page=60&rect=113,394,482,445|AuW-script, p.60]]
>
> ![[AuW-L03-TSP-PvsNP.pdf#page=4&rect=128,92,835,610|AuW-L03-TSP-PvsNP, p.4]]
> ![[AuW-L03-TSP-PvsNP.pdf#page=5&rect=121,111,914,185|AuW-L03-TSP-PvsNP, p.5]]
> ![[AuW-L03-TSP-PvsNP.pdf#page=5&rect=119,11,931,87|AuW-L03-TSP-PvsNP, p.5]]
>>[!quote]+ $d$-hypercube
>> Contains Hamilton tour, label vertices with $d$ bit long gray code schema, changing only one bit at a time.
>> ![[gray-codes.jpg|200]]
>> 
>

>[!quote]- Matchings
> ![[AuW-script.pdf#page=65&rect=113,268,483,420|AuW-script, p.65]]
> ![[AuW-script.pdf#page=66&rect=115,426,484,529|AuW-script, p.66]]
> ![[AuW-L04-matchings.pdf#page=9&rect=319,4,1652,957|AuW-L04-matchings, p.9]]
> ![[AuW-L04-matchings.pdf#page=6&rect=294,149,1347,454|AuW-L04-matchings, p.6]]
>>[!quote]- Satz von Hall
>> ![[AuW-script.pdf#page=76&rect=113,470,482,551|AuW-script, p.76]]
>> $\exists M \in G=(A \uplus B, E), |M| = |A| \iff |X| \leq |N(X)|, \forall X \subseteq A$
>> 
> 
> ![[AuW-script.pdf#page=77&rect=113,294,481,348|AuW-script, p.77]]
> ![[AuW-L05-satz-von-hall.pdf#page=12&rect=364,540,1467,635|AuW-L05-satz-von-hall, p.12]]
> counter example for $G$ k-regular, not bipartite without perfect matching
> ![[AuW-script.pdf#page=79&rect=204,242,393,345|AuW-script, p.79]]
> ![[AuW-L05-satz-von-hall.pdf#page=12&rect=366,803,1479,896|AuW-L05-satz-von-hall, p.12]]
> ![[AuW-L05-satz-von-hall.pdf#page=12&rect=366,248,1541,335|AuW-L05-satz-von-hall, p.12]]
> 
> 
> 

>[!quote]- Coloring
> ![[AuW-script.pdf#page=82&rect=113,245,487,371|AuW-script, p.82]]
> ![[AuW-script.pdf#page=84&rect=110,477,484,600|AuW-script, p.84]]
> 
> 

>[!quote] TSP
>>[!quote] Metric Approximation
>> we can get a 3/2 metric approximation if we do the following:
>> - find MST T in G
>> - make set W of odd degree verices in T
>> - find minimum weight matching M in W
>> - find euler tour E in multi graph M $\cup$ G
>> - 

___

## Probabilities

> [!quote]- Sätze, Definitionen
> ![[AuW-script.pdf#page=106&rect=112,301,483,354|AuW-script, p.106]]
> ![[AuW-script.pdf#page=104&rect=112,294,482,496|AuW-script, p.104]]
> ![[AuW-script.pdf#page=124&rect=110,245,485,354|AuW-script, p.124]]
> ![[AuW-script.pdf#page=125&rect=112,655,391,704|AuW-script, p.125]]
> 



> [!quote]- Coupon collector
> ![[AuW-script.pdf#page=131&rect=150,538,443,587|AuW-script, p.131]]
> where $H_n := \sum_{i=1}^{n}{\frac{1}{i}}=1+\frac{1}{2}+\frac{1}{3}\cdots$ is the $n$-th harmonic number,





___
## Quizzes



intern knoten-disjunkte u-v-Pfade :: $\implies$ Kantendisjunkte u-v-Pfade
Kantendisjunkte u-v-Pfade :: $\;\not\!\!\!\implies$ intern knoten-disjunkte u-v-Pfade

"Jeder Artikulationsknoten grenzt an mindestens eine Brücke." :: stimmt für unendlich viele zusammenhängenden Graphen nicht

 "Jede Brücke hat mindestens einen Artikulationsknoten als Endpunkt" :: stimmt für alle zusammenhängenden Graphen ausser endlich vielen Ausnahmen


