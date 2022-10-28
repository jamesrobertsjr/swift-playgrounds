/* Challenge: Experiment to find an efficient solution that works for you.

In this challenge, the length of the platform in the puzzle can vary, but the arrangement of switches and gems is always
the same.

There are many different approaches you can take to solve this puzzle-can you find one that works for you?
*/

// ORIGINAL SOLUTION (SEP 2021) (BUGGED):

func avoidBlockageCompleteTasks() {
    while !isBlocked {
        moveForward()
        if isOnClosedSwitch {
            toggleSwitch()
        } else if isOnGem {
            collectGem()
        }
    }
}

for i in 1...3 {
    avoidBlockageCompleteTasks()
    turnRight()
    moveForward()
    turnRight()
    avoidBlockageCompleteTasks()
    turnLeft()
    moveForward()
    turnLeft()
}

// REVISED SOLUTION (OCT 2022):

func completeTasks() {
    if isOnGem {
        collectGem()
    } else if isOnClosedSwitch {
        toggleSwitch()
    }
}

func solveRow() {
    while !isBlocked {
        moveForward()
        completeTasks()
    }
}

func navigateBlockage() {
    if isBlocked && isBlockedLeft  {
        turnRight()
        moveForward()
        turnRight()
    } else if isBlocked && !isBlockedLeft && !isBlockedRight {
        turnLeft()
        moveForward()
        turnLeft()
    }
}

for i in 1...3 {
    solveRow()
    navigateBlockage()
}
