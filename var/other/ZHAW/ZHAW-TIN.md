
$A \text{ decidable} \subset \Sigma^* \implies A \text{ semi-decidable} \land \overline A \text{ semi-decidable}$

Proof of "$\Longleftarrow$" 
```
INPUT(w)
n = 0;
WHILE true DO
	n = n + 1;
	IF A(w, n) THEN return 1;
	IF B(w, n) THEN return 0;
end
```
basically, switch step of semi-decidability computation every step 



## $A\cup B$ 


$A, B$ decidable
```
INPUT(w)
IF A(w) THEN return 1;
IF B(w) THEN return 1;
ELSE return 0;
```

$A, B$ semi decidable
```
INPUT(w)
n = 0;
WHILE true DO
	n = n + 1;
	IF A(w, n) THEN return 1;
	IF B(w, n) THEN return 1;
end
```



## $A\cap B$

$A, B$ decidable
```
INPUT(w)
IF A(w) THEN
	IF B(w) THEN return 1;
	ELSE return 0
end
```

$A, B$ semi decidable
```
INPUT(w)
n = 0;
WHILE true DO
	n = n + 1;
	IF A(w, n) THEN
		IF B(w, n) THEN return 1;
	end
end
```
