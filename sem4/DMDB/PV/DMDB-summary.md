> [!danger] TO-DO
> - [ ] candidate key
> - [ ] primary key
> - [ ] compound key
> - [ ] functional dependency
> - [ ] relational algebra, relational calculus
> - [ ] SPJR algebra



## Relational Algebra



## Relational Calculus

**schema**
- relation schema, $R(A_{1} : D_{1}, \dots A_{n} : D_{n})$, where $D_{i}$ is a constant
- database schema, $S = (R_{i})_{m}$, where $R_{i}$ is a relation of arity $n_{i}$
- domain, $\mathrm{dom} = \bigcup_{i \in \mathbb{N}}D_{i}$, infinite set of constants

**instance**
- relation instance, $R(A_{1} : D_{1}, \dots A_{n} : A_{n}) : I_{R} \subseteq \mathrm{dom}^{n}$, specifically $I_{R}$ is finite
	- finite set of facts over the relation
- database instance, $S(R_{1},\dots R_{m}) : \mathbb{I}$, is a function that maps the relation schema $R_{i}$ to an instance $\mathbb{I}(R_{i})$
	- finite set of facts over all relations


**relational calculus query**
- syntax of query is $Q_{\phi} = \{ (x_{1}, \dots x_{k}) \mid \phi\}$, where $\phi$ is a first-order logic formula with $\mathrm{free}(\phi) = \{ x_{i} \}_{k}$
- each relation $R$ corresponds to a predicate in $\phi$
- each instance $\mathbb{I}$ corresponds to a first-order interpretation of $\phi$
- an assignment is a mapping $\alpha : \mathsf{Var} \to \mathrm{dom}$
- semantics of query over an instance $\mathbb{I}$ is given by $Q(\mathbb{I}) = \{ ( \alpha(x_{1}), \dots (x_{k}) ) \mid \mathbb{I, \alpha \models \phi} \}$
- relation calculus query $Q_{\phi}$ is **safe**, if its resolution is finite for all database instances, i.e. $\forall \mathbb{I}. |Q_{\phi}(\mathbb{I})| < \omega$
	- safety of query undecidable
- active domain is set of all constants in RC query constraint $\phi$ and DB instance $\mathbb{I}$, written $\mathrm{adom}(\phi, \mathbb{I})$
- semantics of active domain query, $Q_{\mathrm{adom}(\phi , \mathbb{I})} = \{ (x_{1}, \dots x_{k}) \mid \phi' \land \forall i \in [k]. x_{i} \in \mathrm{adom(\phi, \mathbb{I})} \}$
	- $\phi'$ constrains all variables in $\phi$ bound by quantifiers to $\mathrm{adom}(\phi, \mathbb{I})$
