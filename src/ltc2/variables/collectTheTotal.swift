/* Challenge: Collect a randomly determined number of gems, represented by totalGems.

For this challenge, you're given a constant, totalGems, which is a randomly generated number from 1 to 12. Using this
constant, write code to collect the number of gems defined in totalGems, stopping after that number is reached.
*/

// * ORIGINAL SOLUTION (SEP 2021):

// // Map Variables & Constants.
// let totalGems = randomNumberOfGems
// var gemCounter = 0 

// // Movement Algorithms & Functions.
// func turnAround() {
//     turnLeft()
//     turnLeft()
// }
// func navigateCornersAndBlockage() {
//     if isBlocked && isBlockedRight && isBlockedLeft {
//         turnAround()
//     } else if isBlocked && isBlockedLeft {
//         turnRight()
//     } else if isBlocked && isBlockedRight {
//         turnLeft()
//     }
// }

// // Task Completion Algorithm
// func completeTasks() {
//     if isOnGem {
//         collectGem()
//         gemCounter = gemCounter + 1
//     }
// }

// // Map Completion Algorithm
// while gemCounter < totalGems {
//     moveForward()
//     completeTasks()
//     navigateCornersAndBlockage()
// }

// * REVISED SOLUTION (OCT 2022):

// Map Variables & Constants.
let totalGems = randomNumberOfGems
var gemCounter = 0 

// Movement Algorithms & Functions.
func turnAround() {
    for i in 1...2 {
        turnLeft()
    }
}
func navigateCornersAndBlockage() {
    if isBlocked && isBlockedRight && isBlockedLeft {
        turnAround()
    } else if isBlocked && isBlockedLeft {
        turnRight()
    } else if isBlocked && isBlockedRight {
        turnLeft()
    }
}

// Task Completion Algorithm
func completeTasks() {
    if isOnGem {
        collectGem()
        gemCounter += 1
    }
}

// Map Completion Algorithm
while gemCounter < totalGems {
    moveForward()
    completeTasks()
    navigateCornersAndBlockage()
}
