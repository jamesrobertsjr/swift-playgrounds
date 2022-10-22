/* Goal: Call functions from other functions.

Up to now, the functions you've defined have only called existing commands, such as moveForward() and collectGem(). It
doesn't have to be this way, though!

The function turnAround() directs your character to turn around and face hte opposite direction. You can call this
function inside another function, solveStair(), and call solveStair() in your code to solve bigger parts of the puzzle.

This process of breaking a larger problem into smaller pieces is called decomposition.

1. Define the solveStair() function, calling turnAround() inside of it.
2. Call solveStair() along with the other functions you need.
3. Solve the puzzle by collecting all four gems.
*/

// INITIAL SUCCESSFUL COMPLETION (2021):

func turnAround() {
    turnLeft()
    turnLeft()
}

func solveStair() {
    turnLeft()
    moveForward()
    collectGem()
    turnAround()
    moveForward()
}

solveStair()
solveStair()
solveStair()
solveStair()

// REVISED SOLUTION (10/21/2022):

func turnAround() {
    for i in 1...2 {
        turnLeft()
    }
}

func solveStair() {
    turnLeft()
    moveForward()
    collectGem()
    turnAround()
    moveForward()
}

for i in 1...4 {
    solveStair()
}
