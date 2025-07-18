

check for deadlock in promela
```pml
init {
    /*  */
	do
	:: timeout -> assert(false)
	od
}
```