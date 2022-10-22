/* Goal: Use composition to turn to the right.

Have you noticed there's no turnRight() command available to you? If your character needs to turn right to reach a gem,
how can you make that happen?

You sometimes have to solve coding problems by combining existing commands to create a new behavior. This process is
called composition.

1. Figure out how to turn to the right using only the commands you've used before.
2. Use composition to turn your character to the right when needed.
3. Enter the commands to collect the gem.
*/

// INITIAL SUCCESSFUL COMPLETION (SEP 2021):

func turnRight() {
    turnLeft()
    turnLeft()
    turnLeft()
}

func moveForward3() {
    moveForward()
    moveForward()
    moveForward()
}

moveForward3()
turnRight()
moveForward3()
collectGem()

// REVISED SOLUTION (OCT 2022):

func turnRight() {
    for i in 1...3 {
        turnLeft()
    }
}

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        moveForward()
    }
}

moveForwardSpecific(n: 3)
turnRight()
moveForwardSpecific(n: 3)
collectGem()
