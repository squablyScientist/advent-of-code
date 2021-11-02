NB. A program to determine what level of a floor a string will result in if '(' means go down, and ')' means go up. We start on floor 0.

NB. The puzzle input
input =: 1!:1 <'input'

NB. Turns each ')' -> 1, '(' -> -1 and then sums them together to get the floor.
+/ _1 + _1 }. ') (' i. input
