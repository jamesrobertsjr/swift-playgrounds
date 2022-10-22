/* Goal: Decompose a solution across multiple functions.

As you've just learned, it can be very useful to define a function that accomplishes a small task, then call that
function within another function to accomplish an even bigger task.

This practice makes your code more readable, because you can name a function based on its purpose; for example,
turnAround(). It also simplifies the process of writing code, because after you've written a function to perform a
bigger task, you no longer have to think about the individual commands.

1. Run the code to see what happens when solveRow() is called.
2. Tweak the code inside solveRow() so that it solves a bigger chunk of the puzzle.
3. Call solveRow() along with other commands to solve the puzzle.
*/

// INITIAL SUCCESSFUL COMPLETION (SEP 2021):

func collectGemTurnAround() {
    moveForward()
    moveForward()
    collectGem()
    turnLeft()
    turnLeft()
    moveForward()
    moveForward()
}

func solveRow() {
    collectGemTurnAround()
    collectGemTurnAround()
    turnRight()
}

solveRow()
moveForward()
turnLeft()
solveRow()
moveForward()
turnLeft()
solveRow()

// REVISED SOLUTION (OCT 2022) (can't fit in boxes in Swift Playgrounds):

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        moveForward()
    }
}

func turnAround() {
    for i in 1...2 {
        turnLeft()
    }
}

func collectGemTurnAround() {
    moveForwardSpecific(n: 2)
    collectGem()
    turnAround()
    moveForwardSpecific(n: 2)
}

func solveRow() {
    for i in 1...2 {
        collectGemTurnAround()
    }
    turnRight()
}

solveRow()
moveForward()
turnLeft()
solveRow()
moveForward()
turnLeft()
solveRow()
