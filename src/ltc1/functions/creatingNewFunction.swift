/* Goal: Define and use your own function to turn right.

In the previous puzzle, you turned right only once, so using three turn lefts wasn't a problem. But what if you need to
turn right more than once? It would be more efficient to put all those left turns into a turnRight() command that you
run multiple times.

Commands like turnRight() are actually functions that perform a body of work. You've already been using functions -
every command you've used to this point has actually been a function that we've provided for you.

To define a function, enter a set of commands between the { and } curly braces to give it its behavior.

1. Select the inside of the function body (between the { and } curly braces).
2. Enter three turnLeft() commands.
3. Beneath the function, use existing commands along with turnRight() to toggle open the closed switch.
*/

// INITIAL SUCCESSFUL COMPLETION (2021):

func turnRight() {
    turnLeft()
    turnLeft()
    turnLeft()
}

moveForward()
turnLeft()
moveForward()
turnRight()
moveForward()
turnRight()
moveForward()
turnRight()
moveForward()
turnLeft()
moveForward()
toggleSwitch()

// REVISED SOLUTION (10/21/2022):

func turnRight() {
    for i in 1...3 {
        turnLeft()
    }
}

moveForward()
turnLeft()
moveForward()
turnRight()
moveForward()
turnRight()
moveForward()
turnRight()
moveForward()
turnLeft()
moveForward()
toggleSwitch()
