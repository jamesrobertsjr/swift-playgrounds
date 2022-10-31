/* Exercise: Write your own algorithm to solve the maze.

You've tweaked several algorithms so far; it's time to practice what you've learned and write your own algorithm from
scratch.

To complete this puzzle, you'll need to follow the path, moving to each switch and then deciding whether to turn left or
right. Try to identify a pattern in the puzzle that lets you know which way to turn.

1. Walk through pseudocode in your mind for how to toggle the six switches and reach the gem.
2. Write out your code, testing and adjusting your algorithm as necessary.
*/

// * ORIGINAL SOLUTION (SEP 2021):

// func turnAround() {
//     turnLeft()
//     turnLeft()
// }

// func navigateMaze() {
//     if isBlockedLeft {
//         moveForward()
//     } else {
//         turnLeft()
//         moveForward()
//     }
//     if isBlockedLeft && isBlocked {
//         turnAround()
//     }
// }

// while !isOnGem {
//     navigateMaze()
//     if isOnClosedSwitch {
//         toggleSwitch()
//     }
// }
// collectGem()

// * REVISED SOLUTION (OCT 2022):

func solveMaze() {
    if isBlockedRight && isBlocked {
        turnLeft()
    } else if isBlockedRight {
        moveForward()
    } else {
        turnRight()
        moveForward()
    }
}

while !isOnGem {
    solveMaze()
    if isOnClosedSwitch {
        toggleSwitch()
    }
}
collectGem()
