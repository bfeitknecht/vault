
- method signatures
- method overloading
- sequence types (`String`, arrays `T[]`)
- pre- / post-increment / decrement
- off-by-one errors
- sentinel for loop control


# Slides

[[EProg-slides-w04.pdf]]

# Notes

`String`
- is an object type, not arrays like in C!
- is immutable!

`s.substring(i, j)` returns substring of type `String` from start-index `i` (zero indexed) to end-index `j` (`i+l`, where `l` is length of substring)

`s.charAt(i)` returns `char` symbol at index `i` (zero indexed)


**Variable Binding through Assignment Operators**
- variable: `=` 
- addition: `+=`
- subtraction: `-=`
- multiplication: `*=`
- division: `/=`
- modulo: `%=`
- bitwise and: `&=`
- bitwise or: `|=`
- bitwise xor: `^=`
- logical right shift: `>>=`
- logical left shift: `<<=`

