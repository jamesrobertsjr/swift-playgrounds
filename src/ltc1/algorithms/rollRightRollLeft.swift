/* Challenge: Implement the most efficient algorithm to collect the gems and activate the switches.

For the last challenge of Learn to Code 1, you'll test your algorithm design skills. There are many different algorithms
you could use to solve the puzzle, and many different ways to structure your code.

If you're not able to find a solution right away, that's okay! Coding often requires trying different solutions to a
problem until you find the one that works best. When you're ready, you can move on to Learn to Code 2.
*/

// * ORIGINAL SOLUTION (SEP 2021):

// func solveMaze() {
//     if isBlockedLeft || isBlockedRight {
//         moveForward()
//     } else {
//         turnLeft()
//         moveForward()
//     }
//     if !isBlockedLeft && !isBlockedRight {
//         turnLeft()
//     }
//     if isBlockedLeft && isBlocked {
//         turnRight()
//     } else if isBlockedRight && isBlocked {
//         turnLeft()
//     }
// }

// func completeTasks() {
//     if isOnClosedSwitch {
//         toggleSwitch()
//     }
//     if isOnGem {
//         collectGem()
//     }
// }

// while !isBlocked {
//     solveMaze()
//     completeTasks()
// }

// * REVISED SOLUTION (OCT 2022):

func solveMaze() {
    if (isBlockedRight && isBlocked) || (isBlocked && !isBlockedLeft && !isBlockedRight) {
        turnLeft()
    } else if isBlockedLeft && isBlocked {
        turnRight()
    }
}

func completeTasks() {
    if isOnGem {
        collectGem()
    } else if isOnClosedSwitch {
        toggleSwitch()
    }
}

while !isBlocked {
    moveForward()
    completeTasks()
    solveMaze()
}