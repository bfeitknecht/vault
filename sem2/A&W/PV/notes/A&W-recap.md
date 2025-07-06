---
cards-deck: sem2::A&W::bf
---


## Misc

> [!attention]- Exam Points
> - 40p Moodle Quiz: ähnliche oder gleiche Fragen wie Miniquiz
> - 20p Programmieren, vermutlich:
>     Eine Flow-Aufgabe
>     Eine Wahrscheinlichkeits-Aufgabe (bedingte Wahrscheinlichkeit und DP)
> - 20p Schriftlich, vermutlich:
>     ~10p Wahrscheinlichkeitsaufgabe (Erwartungswert, Varianz)
>     ~10p Beweise

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
> ![[A&W-L01-connectedness.pdf#page=18&rect=58,655,940,745|A&W-L01-connectedness, p.18]]
>
> ![[A&W-L03-TSP-PvsNP.pdf#page=7&rect=131,516,735,629|A&W-L03-TSP-PvsNP, p.7]]
>
>>[!quote]- k-vertex-connected
>>![[A&W-w01-cycles.pdf#page=9&rect=77,548,449,732|A&W-w01-cycles, p.9]]
>
>>[!quote]- k-edge-connected
>>![[A&W-w01-cycles.pdf#page=9&rect=88,64,476,205|A&W-w01-cycles, p.9]]
>

>[!quote]- Hamilton Tour
>![[A&W-script.pdf#page=60&rect=113,394,482,445|A&W-script, p.60]]
>
> ![[A&W-L03-TSP-PvsNP.pdf#page=4&rect=128,92,835,610|A&W-L03-TSP-PvsNP, p.4]]
> ![[A&W-L03-TSP-PvsNP.pdf#page=5&rect=121,111,914,185|A&W-L03-TSP-PvsNP, p.5]]
> ![[A&W-L03-TSP-PvsNP.pdf#page=5&rect=119,11,931,87|A&W-L03-TSP-PvsNP, p.5]]
>>[!quote]+ $d$-hypercube
>> Contains Hamilton tour, label vertices with $d$ bit long gray code schema, changing only one bit at a time.
>> ![[A&W-gray-codes.jpg|200]]
>>
>

>[!quote]- Matchings
> ![[A&W-script.pdf#page=65&rect=113,268,483,420|A&W-script, p.65]]
> ![[A&W-script.pdf#page=66&rect=115,426,484,529|A&W-script, p.66]]
> ![[A&W-L04-matchings.pdf#page=9&rect=319,4,1652,957|A&W-L04-matchings, p.9]]
> ![[A&W-L04-matchings.pdf#page=6&rect=294,149,1347,454|A&W-L04-matchings, p.6]]
>>[!quote]- Satz von Hall
>> ![[A&W-script.pdf#page=76&rect=113,470,482,551|A&W-script, p.76]]
>> $\exists M \in G=(A \uplus B, E), |M| = |A| \iff |X| \leq |N(X)|, \forall X \subseteq A$
>>
>
> ![[A&W-script.pdf#page=77&rect=113,294,481,348|A&W-script, p.77]]
> ![[A&W-L05-satz-von-hall.pdf#page=12&rect=364,540,1467,635|A&W-L05-satz-von-hall, p.12]]
> counter example for $G$ k-regular, not bipartite without perfect matching
> ![[A&W-script.pdf#page=79&rect=204,242,393,345|A&W-script, p.79]]
> ![[A&W-L05-satz-von-hall.pdf#page=12&rect=366,803,1479,896|A&W-L05-satz-von-hall, p.12]]
> ![[A&W-L05-satz-von-hall.pdf#page=12&rect=366,248,1541,335|A&W-L05-satz-von-hall, p.12]]
>
>
>

>[!quote]- Coloring
> ![[A&W-script.pdf#page=82&rect=113,245,487,371|A&W-script, p.82]]
> ![[A&W-script.pdf#page=84&rect=110,477,484,600|A&W-script, p.84]]
>
>

>[!quote]- TSP
> metric condition: G fulfills triangle inequality, direct path is always shorter than indirect
> general condition: ?? no colinearity
>
>>[!quote]- Metrix 2 Approximation
>> - find MST T in G
>> - double every edge in T, -> G'
>> - find euler tour in resulting multigraph G'
>> - make hamilton tour by skipping doubled nodes
>>
>
>>[!quote]- Metric 3/2 Approximation
>> - find MST T in G
>> - make set W of odd degree verices in T
>> - find minimum weight matching M in W
>> - find euler tour E in multi graph G' = M $\cup$ G
>> - make hamilton tour by skipping doubled nodes
>>
>
>%%- any 2 approximation is also a 4 approximation,  ??  %%

___

## Probabilities

> [!quote]- Sätze, Definitionen
> ![[A&W-script.pdf#page=106&rect=112,301,483,354|A&W-script, p.106]]
> ![[A&W-script.pdf#page=104&rect=112,294,482,496|A&W-script, p.104]]
> ![[A&W-script.pdf#page=124&rect=110,245,485,354|A&W-script, p.124]]
> ![[A&W-script.pdf#page=125&rect=112,655,391,704|A&W-script, p.125]]
>



> [!quote]- Coupon collector
> ![[A&W-script.pdf#page=131&rect=150,538,443,587|A&W-script, p.131]]
> where $H_n := \sum_{i=1}^{n}{\frac{1}{i}}=1+\frac{1}{2}+\frac{1}{3}\cdots$ is the $n$-th harmonic number,





___
## Quizzes



intern knoten-disjunkte u-v-Pfade :: $\implies$ Kantendisjunkte u-v-Pfade
Kantendisjunkte u-v-Pfade :: $\;\not\!\!\!\implies$ intern knoten-disjunkte u-v-Pfade

"Jeder Artikulationsknoten grenzt an mindestens eine Brücke." :: stimmt für unendlich viele zusammenhängenden Graphen nicht

 "Jede Brücke hat mindestens einen Artikulationsknoten als Endpunkt" :: stimmt für alle zusammenhängenden Graphen ausser endlich vielen Ausnahmen
