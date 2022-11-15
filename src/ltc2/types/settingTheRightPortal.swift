/* Goal: Modify the state of each portal to gather the gems.

In this puzzle, there are two portals, and you'll need to use both of them to move your character to other parts of the
puzzle world. But you'll also need to walk across some areas, so you have to refer to each portal instance separately to
modify the isActive property.

To do this, you must set the state of each portal instance. State is the stored information of a variable at any given
time. So while sometimes a portal instance stores an isActive value of true, other times it stores a value of false.

1. Plan how to activate and deactivate each portal to collect all the gems.
2. Use dot notation to modify the isActive property for bluePortal and pinkPortal as you solve the puzzle.
*/

// * ORIGINAL SOLUTION (SEP 2021):

// // Map Variables & Constants.
// var gemCounter = 0

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

// // Portal Operation Functions & Algorithms.
// func portalsOn() {
//     bluePortal.isActive = true
//     pinkPortal.isActive = true
// }
// func portalsOff() {
//     bluePortal.isActive = false
//     pinkPortal.isActive = false
// }
// func operatePortals() {
//     if gemCounter < 1 || gemCounter > 2 {
//         portalsOff()
//     } else {
//         portalsOn()
//     }
// }

// // Task Completion Algorithm.
// func completeTasks() {
//     if isOnGem {
//         collectGem()
//         gemCounter = gemCounter + 1
//     }
// }

// // Map Completion Algorithm.
// while gemCounter < 4 {
//     operatePortals()
//     moveForward()
//     navigateBlockage()
//     completeTasks()
// }

// * REVISED SOLUTION (NOV 2022):

var gemCounter = 0

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

func activatePortals(BooleanValue: Bool) {
    if BooleanValue {
        bluePortal.isActive = true
        pinkPortal.isActive = true
    } else {
        bluePortal.isActive = false
        pinkPortal.isActive = false
    }
}

func operatePortals() {
    if gemCounter < 1 || gemCounter > 2 {
        activatePortals(BooleanValue: false)
    } else {
        activatePortals(BooleanValue: true)
    }
}

func completeTasks() {
    if isOnGem {
        collectGem()
        gemCounter += 1
    }
}

while gemCounter < 4 {
    operatePortals()
    navigateBlockage()
    completeTasks()
}