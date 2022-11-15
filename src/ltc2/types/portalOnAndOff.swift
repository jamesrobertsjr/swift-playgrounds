/* Challenge: Activate and deactivate a portal to collect the gems and toggle the switch.

For this challenge, you'll need to use the portal to move to another location in the puzzle world. But you'll also need
to move over the portal to access some locations.

Practice setting properties by activating and deactivating the portal at the right time. In this puzzle, there's an
instance known as purplePortal that you can modify using dot notation.

Using dot notation
`purplePortal.isActive = true`

Use the name of the instance, purplePortal, followed by a period (.) and the name of the property you'd like to access
(isActive).
*/

// * ORIGINAL SOLUTION (SEP 2021):

// // Map Variables & Constants
// var gemCounter = 0
// var switchCounter = 0

// // Movement Functions & Algorithms.
// func turnAround() {
//     turnLeft()
//     turnLeft()
// }
// func navigateBlockage() {
//     if isBlocked {
//         turnAround()
//     }
// }

// // Task Completion Algorithm.
// func completeTasks() {
//     if isOnGem {
//         collectGem()
//         gemCounter = gemCounter + 1
//     } else if isOnClosedSwitch {
//         toggleSwitch()
//         switchCounter = switchCounter + 1
//     }
// }

// // Portal Operation Algorithm
// func operatePortal() {
//     if gemCounter < 4 || switchCounter > 0 {
//         purplePortal.isActive = false
//     } else {
//         purplePortal.isActive = true
//     } 
// }

// // Map Completion Algorithm.
// while gemCounter < 7 {
//     moveForward()
//     completeTasks()
//     navigateBlockage()
//     operatePortal()
// }

// * REVISED SOLUTION (NOV 2022):

var gemCounter = 0
var switchCounter = 0

func turnAround() {
    for i in 1...2 {
        turnLeft()
    }
}

func navigateBlockage() {
    if !isBlocked {
        moveForward()
    } else {
        turnAround()
    }
}

func completeTasks() {
    if isOnGem {
        collectGem()
        gemCounter += 1
    } else if isOnClosedSwitch {
        toggleSwitch()
        switchCounter += 1
    }
}

func operatePortal() {
    if gemCounter < 4 || switchCounter > 0 {
        purplePortal.isActive = false
    } else {
        purplePortal.isActive = true
    }
}

while gemCounter < 7 {
    navigateBlockage()
    completeTasks()
    operatePortal()
}