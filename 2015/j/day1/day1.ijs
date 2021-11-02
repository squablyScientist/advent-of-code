NB. A program to determine what level of a floor a string will result in if '(' means go down, and ')' means go up. We start on floor 0.

NB. The puzzle input. Assuming there is a 0 byte at the end for EOL
input =: 1!:1 <'input'

NB. First half of the puzzle
NB. Turns each ')' -> 1, '(' -> -1 and then sums them together to get the floor.
+/ _1 + }: ') (' i. input

target_floor =: _1

NB. Second half of the puzzle, must determine the first index i where there are more '(' than ')' before i.
>: target_floor i.~ +/\ _1 + }: ') (' i. input
