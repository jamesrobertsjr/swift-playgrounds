/* Challenge: Modify the state of two portals to solve the puzzle.

For this challenge, there are lots of gems and switches in the puzzle world, with several portals to teleport through.
That means there are lots of ways to solve the puzzle.

As you write your code, try different solutions in your head to find the most efficient one. Writing efficient code 
results in a program that runs faster, which makes people using the app happy, and improves the battery life.

Access the portals using `greenPortal` and `orangePortal`.
*/

// * ORIGINAL SOLUTION (SEP 2021):

// greenPortal.isActive = false
// orangePortal.isActive = false

// var gemCounter = 0
// var switchCounter = 0

// func turnAround() {
//     turnLeft()
//     turnLeft()
// }

// func completeTasks() {
//     if isOnGem {
//         collectGem()
//         gemCounter += 1
//     }
//     if isOnClosedSwitch {
//         toggleSwitch()
//         switchCounter += 1
//     }
// }

// func solvePuzzle() {
//     moveForward()
//     if !isBlockedRight {
//         turnRight()
//     } else if isBlocked {
//         turnAround()
//     }
// }

// // Map Completion Algorithm

// turnRight()
// while gemCounter < 6 {
//     solvePuzzle()
//     completeTasks()
// }
// greenPortal.isActive = true
// solvePuzzle()
// greenPortal.isActive = false
// while switchCounter < 6 {
//     solvePuzzle()
//     completeTasks()
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
    if !isBlockedLeft {
        turnLeft()
        moveForward()
    } else if !isBlockedRight {
        turnRight()
        moveForward()
    } else if !isBlocked {
        moveForward()
    } else {
        turnAround()
    }
}

func activatePortals(BooleanValue: Bool) {
    if BooleanValue {
        greenPortal.isActive = true
        orangePortal.isActive = true
    } else {
        greenPortal.isActive = false
        orangePortal.isActive = false
    }
}

func operatePortals() {
    if gemCounter < 6 || switchCounter >= 3 {
        activatePortals(BooleanValue: false)
    } else if gemCounter == 6 && switchCounter < 1 {
        activatePortals(BooleanValue: true)
    } else if switchCounter >= 1 && switchCounter < 3 {
        orangePortal.isActive = false
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

while switchCounter < 1 {
    operatePortals()
    completeTasks()
    navigateBlockage()
}

orangePortal.isActive = false
moveForward()
turnRight()
moveForward()

while switchCounter < 6 {
    operatePortals()
    completeTasks()
    navigateBlockage()
}
