> [!danger] TO-DO
> - [ ] candidate key
> - [ ] primary key
> - [ ] compound key
> - [ ] functional dependency
> - [ ] relational algebra, relational calculus
> - [ ] SPJR algebra



## Relational Algebra




## Relational Calculus




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
