
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
- [ ] FS21 wip
- [ ] HS21
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
class C {
	int x = 0;
	
	public void m(int x) {
		// parameter shadows attribute
	}
}

class CC extends C {
	int x = 1;	// local attribute shadows super attribute
}

```



> [!quote]- Collections and Map Frameworks in Java
> 
> ![[java.util.collections.svg]]
> ![[java.util.map.svg]]