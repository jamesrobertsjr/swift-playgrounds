/* Goal: Use a for loop to repeat a sequence of commands.

In this puzzle, you must collect four gems that are located in the same relative locations around a square. You'll
create a loop that repeats the code below for each of the sides to solve the entire puzzle.

1. Select for in the shortcut bar to add a for loop into your code.
2. Press the bottom curly brace to select the loop.
3. Press and hold the curly brace, then drag it downward to pull the existing code into the loop.
*/

// ORIGINAL COMPLETION (SEP 2021)

func moveForward3() {
    moveForward()
    moveForward()
    moveForward()
}

for i in 1 ... 4 {
    moveForward()
    collectGem()
    moveForward3()
    turnRight()
}

// REVISED SOLUTION (OCT 2022)

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        moveForward()
    }
}

for i in 1...4 {
    moveForward()
    collectGem()
    moveForwardSpecific(n: 3)
    turnRight()
}