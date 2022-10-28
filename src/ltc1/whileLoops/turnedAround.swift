/* Challenge: Choose the tools that will make your solution as efficient as possible.

Think of all the tools you've learned about so far:

Your coding tool belt
- functions
- for loops
- conditional code
- !, &&, and | | operators
- while loops

For this challenge, your goal is to choose the most appropriate tools from your coding tool belt to create a solution
for the puzzle. There are no right or wrong answers, but try to be as efficient as possible with your code.
*/

// ORIGINAL SOLUTION (SEP 2021):

for i in 1...4 {
    moveForward()
    turnLeft()
    collectGem()
    moveForward()
    collectGem()
    turnLeft()
    moveForward()
    turnRight()
}

// REVISED SOLUTION (OCT 2022):

for i in 1...4 {
    for i in 1...2 {
        moveForward()
        collectGem()
        turnLeft()
    }
    moveForward()
    turnRight()
}