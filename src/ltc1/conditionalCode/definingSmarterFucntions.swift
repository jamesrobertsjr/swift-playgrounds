/* Goal: Use a function, a loop, and a condition to collect gems or activate switches.

In this puzzle, every other forward movement might lead to a gem, a switch, or nothing at all. When you run the puzzle,
the wireframes show the locations where items might appear. To solve the puzzle, you could write lots of if statements,
but there's a better way.

Start by breaking the puzzle into its basic patterns. There are three major paths, each with two possible gem or switch
locations.

1. Using an if statement, define the collectOrToggle() function to check the contents of a tile.
2. Below your function definition, call collectOrToggle() and other commands to solve the puzzle.
*/

// ORIGINAL COMPLETION (SEP 2021):

func collectOrToggle() {
    if isOnGem {
        collectGem()
    } else if isOnClosedSwitch {
        toggleSwitch()
    }
}

func moveForward2() {
    moveForward()
    moveForward()
}

func solveRow() {
    moveForward2()
    collectOrToggle()
    moveForward2()
    collectOrToggle()
}

solveRow()
turnLeft()
moveForward2()
turnLeft()
solveRow()
turnRight()
moveForward()
turnRight()
solveRow()

// REVISED SOLUTION (OCT 2022):

func collectOrToggle() {
    if isOnGem {
        collectGem()
    } else if isOnClosedSwitch {
        toggleSwitch()
    }
}

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        moveForward()
    }
}

func solveRow() {
    for i in 1...2 {
        moveForwardSpecific(n: 2)
        collectOrToggle()
    }
}

solveRow()
turnLeft()
moveForwardSpecific(n: 2)
turnLeft()
solveRow()
turnRight()
moveForward()
turnRight()
solveRow()
