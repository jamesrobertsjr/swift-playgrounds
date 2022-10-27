/* Challenge: Use logical operators and conditional code to move through the puzzle world.

Each of these operators influences the way your conditional code runs:

- The NOT operator (!) inverts a Boolean value, saying, "If NOT this condition, do this."
- The AND operator (&&) combines two conditions and runs the code only if both are true.
- The OR operator (||) combines two conditions and runs the code if at least one is true.

Solve the challenge by choosing the operators and conditions that will work best to collect all the gems and toggle open
the switches.
*/

// ORIGINAL COMPLETION (SEP 2021):

func moveForward2() {
    moveForward()
    moveForward()
}

func turnAround() {
    turnLeft()
    turnLeft()
}

func solveRow() {
    turnRight()
    moveForward2()
    collectGem()
    turnAround()
    moveForward2()
    turnRight()
}

func completeTasks() {
    if isOnClosedSwitch && isOnGem {
        toggleSwitch()
        collectGem()
        solveRow()
    } else if isOnGem {
        collectGem()
    } else if isOnClosedSwitch {
        toggleSwitch()
    }
    
    if isOnOpenSwitch && isBlocked {
        turnLeft()
    } else if isBlocked {
        turnAround()
        moveForward()
        turnRight()
    }
}

for i in 1 ... 9 {
    moveForward()
    completeTasks()
}

// REVISED SOLUTION (OCT 2022):

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

func solvePathDeviation() {
    collectGem()
    toggleSwitch()
    turnRight()
    moveForwardSpecific(n: 2)
    collectGem()
    turnAround()
    moveForwardSpecific(n: 2)
    turnRight()
}

func navigateBlockage() {
    if isOnOpenSwitch && isBlocked {
        turnLeft()
        moveForward()
    } else if isBlocked {
        turnAround()
        moveForward()
        turnRight()
    }
}

func completeTasks() {
    moveForward()
    if isOnGem && isOnClosedSwitch {
        solvePathDeviation()
    } else if isOnGem {
        collectGem()
    } else if isOnClosedSwitch {
        toggleSwitch()
    }
    navigateBlockage()
}

for i in 1...8 {
    completeTasks()
}