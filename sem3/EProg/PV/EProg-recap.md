
# Topics

- [x] operator precedence ✅ 2025-01-14
- [ ] casting rules
- [ ] instantiation rules


# Exams

## Theory

- [ ] HS18
- [ ] FS19
- [ ] HS19
- [ ] FS20
- [ ] HS20
- [ ] FS21 look over
- [x] HS21 A ✅ 2025-01-16
- [ ] HS21 B
- [ ] FS22
- [ ] HS22
- [ ] FS23
- [ ] HS23

## Program

- [x] HS19 ✅ 2025-01-09
- [ ] FS20
- [x] HS20 ✅ 2025-01-11
- [ ] FS21
- [ ] HS21
- [ ] FS22
- [ ] HS22
- [ ] FS23
- [ ] HS23
- [ ] FS24



# Misc

swap two array variables without temporary variable
```java
void swap(int[] A, int i, int j) {
	A[i] ^= A[j];
	A[j] ^= A[i];
	A[i] ^= A[j];
}
```


toggle boolean variable
```java
boolean toggle = false;
toggle ^= true;	// toggle == true
toggle ^= true; // toggle == false
```



# Study


| Operators                                      | Precedence                                                      | Associativity |
| ---------------------------------------------- | --------------------------------------------------------------- | ------------- |
| parenthesis, array / member access             | `(expr)` `[]` `.`                                               | LR            |
| postfix                                        | `expr++` `expr--`                                               | RL            |
| unary<br>logical NOT, bitwise INV<br>type cast | `++expr` `--expr` `+expr` `-expr`<br>`!` `~`<br>`(T)`           | RL            |
| multiplicative                                 | `*` `/` `%`                                                     | LR            |
| additive                                       | `+` `-`                                                         | LR            |
| shift                                          | `<<` `>>` `>>>`                                                 | LR            |
| relational                                     | `<` `>` `<=` `>=` `instanceof`                                  | LR            |
| equality                                       | `==` `!=`                                                       | LR            |
| bitwise AND                                    | `&`                                                             | LR            |
| bitwise XOR                                    | `^`                                                             | LR            |
| bitwise OR                                     | `\|`                                                            | LR            |
| logical AND                                    | `&&`                                                            | LR            |
| logical OR                                     | `\|`                                                            | LR            |
| ternary                                        | `? :`                                                           | RL            |
| assignment                                     | `=` `+=` `-=` `*=` `/=` `%=` `&=` `^=` `\|=` `<<=` `>>=` `>>>=` | RL            |

> [!quote] Java is pass-by-value, meaning what we do to a passed variable doesn't affect it if it's a primitive type but can affect it if it's an object.


```java
class A {
	int a = 0;
	int x = 1;
	
	public void m1(int x) {
		System.out.print(a);		// this attribute explicit parameter
		System.out.print(x);		// parameter shadows this attribute
		m2(x)
	}
	
	public void m3(int x) {
		System.out.print(a);		// this attribute shadows sub attribute
	}
}

class B extends A {
	int a = 1;	// this attribute shadows super attribute
	
	public void m2(int x) {
		System.out.print(x);
		m1(x);
	}
	
	public void m3(int x) {
		System.out.print("x");
	}
}

// ...

public static void main(String[] args) {
	B b = new B()
	b.m2(4)		// -> 404x
}
```



> [!quote]- Collections and Map Frameworks in Java
> 
> ![[java.util.collections.svg]]
> ![[java.util.map.svg]]

- exhaustive `if() else` suffices for return value
- for `int x` arbitrary `x % 1 == 0
- `1 / 1 == 1`
- in inherited methods the superclass attributes shadow the subclass's