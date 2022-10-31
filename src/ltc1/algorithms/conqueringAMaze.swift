/* Goal: Goal: Use the right-hand rule to navigate through a maze.

An algorithm that follows the right-hand rule works well for solving simple puzzles, but did you know that you can also
use it to move through more complicated paths, like mazes?

For this puzzle, walk through the maze in your mind. If you always keep your right hand on the wall, you'll eventually
reach the last gem. To solve the maze, adjust your algorithm from the previous page to navigate to the gem and collect
it.

1. Start with the code from the previous page by copying and pasting, or, if you want a challenge, start with all-new
code.
2. Adjust your code so that your character follows the right-hand rule through maze until reaching the gem.
*/

// * ORIGINAL SOLUTION (SEP 2021):

// func turnAround() {
//     turnLeft()
//     turnLeft()
// }

// func navigateAroundWall() {
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
//     navigateAroundWall()
// }
// collectGem()

// * REVISED SOLUTION (OCT 2022):

func navigateAroundWall() {
    if isBlockedRight && isBlocked {
        turnLeft()
    } else if isBlockedRight {
        moveForward()
    } else if !isBlocked {
        turnRight()
        moveForward()
    } else {
        turnRight()
        moveForward()
    }
}

while !isOnGem {
    navigateAroundWall()
}
collectGem()