/* To deactivate a portal, you'll use dot notation to change the value of the isActive property on a specific portal
instance.

Using dot notation
Rules for writing code that a computer understands are known as syntax. Dot notation syntax looks like this:
`greenPortal.isActive = true`

1. Use dot notation to set the isActive property of the greenPortal instance to false.
2. Toggle open each switch.
*/

// * ORIGINAL SOLUTION (SEP 2021):

// greenPortal.isActive = false
// var switchCounter = 0

// // Movement Functions & Algorithms.
// func turnAround() {
//     turnLeft()
//     turnLeft()
// }
// func navigateCornersAndBlockage() {
//     if isBlocked {
//         turnAround()
//     }
//     if !isBlockedLeft && !isBlockedRight {
//         turnRight()
//     }
// }

// // Task Completion Algorithm
// func completeTasks() {
//     if isOnClosedSwitch {
//         toggleSwitch()
//         switchCounter = switchCounter + 1
//     }
// }

// // Map Completion Algorithm
// while switchCounter < 3 {
//     moveForward()
//     completeTasks()
//     navigateCornersAndBlockage()
// }

// * REVISED SOLUTION (NOV 2022):

greenPortal.isActive = false
var switchCounter = 0

func turnAround() {
    for i in 1...2 {
        turnLeft()
    }
}

func navigateBlockage() {
    if !isBlockedLeft && !isBlockedRight {
        turnLeft()
        moveForward()
    } else if !isBlocked {
        moveForward()
    } else {
        turnAround()
    }
}

func completeTasks() {
    if isOnClosedSwitch {
        toggleSwitch()
        switchCounter += 1
    }
}

while switchCounter < 3 {
    completeTasks()
    navigateBlockage()
}


