/* Challenge: Create instances of type Character and Expert and have them work together to solve the puzzle.

In this challenge, you'll need to initialize instances of your character and your expert, and then use them together to
solve the puzzle. But instead of focusing on only one instance at a time, you'll need to mix the behaviors of both to
make them work together.

Start by creating an instance of your character and an instance of your expert. Use your expert to turn one of the locks
so your character can reach the gem or the switch. Then pick the other lock so your character can complete the
challenge.
*/

// * SOLUTION 1 (NOV 2022):

let expert = Expert()
let character = Character()
var gemCounter = 0
var switchCounter = 0

func moveForwardSpecific(type: String, times: Int) {
    if type == "expert" {
        for i in 1...times {
            expert.moveForward()
        }
    } else if type == "character" {
        for i in 1...times {
            character.moveForward()
        }
    }
}

func turnLockSpecific(direction: String, times: Int) {
    if direction == "up" {
        for i in 1...times {
            expert.turnLockUp()
        }
    } else if direction == "down" {
        for i in 1...times {
            expert.turnLockDown()
        }
    }
}

func collectOrToggle() {
    if character.isOnGem {
        character.collectGem()
        gemCounter += 1
    } else if character.isOnClosedSwitch {
        character.toggleSwitch()
        switchCounter += 1
    }
}

expert.turnLeft()
moveForwardSpecific(type: "expert", times: 3)
expert.turnRight()
moveForwardSpecific(type: "expert", times: 2)
expert.turnLeft()
turnLockSpecific(direction: "down", times: 2)
expert.turnRight()
moveForwardSpecific(type: "expert", times: 2)
expert.turnRight()
moveForwardSpecific(type: "expert", times: 6)
expert.turnRight()
moveForwardSpecific(type: "expert", times: 2)
expert.turnLeft()
turnLockSpecific(direction: "up", times: 1)

while switchCounter < 1 {
    character.moveForward()
    collectOrToggle()
}

// * SOLUTION 2 (NOV 2022):

// let expert = Expert()
// let character = Character()
// var expertMoveCounter = 0
// var gemCounter = 0
// var switchCounter = 0

// func turnLockSpecific(direction: String, times: Int) {
//     if direction == "up" {
//         for i in 1...times {
//             expert.turnLockUp()
//         }
//     } else if direction == "down" {
//         for i in 1...times {
//             expert.turnLockDown()
//         }
//     }
// }

// func collectOrToggle() {
//     if character.isOnGem {
//         character.collectGem()
//         gemCounter += 1
//     } else if character.isOnClosedSwitch {
//         character.toggleSwitch()
//         switchCounter += 1
//     }
// }

// func navigateExpertBlockage() {
//     if !expert.isBlocked {
//         expert.moveForward()
//         expertMoveCounter += 1
//     } else {
//         expert.turnRight()
//     }
// }

// func checkExpertMoves() {
//     if expertMoveCounter == 5 {
//         expert.turnLeft()
//         turnLockSpecific(direction: "down", times: 2)
//         expert.turnRight()
//     } else if expertMoveCounter == 15 {
//         expert.turnLeft()
//         turnLockSpecific(direction: "up", times: 1)
//         expert.turnRight()
//     }
// }

// expert.turnLeft()
// while expertMoveCounter < 20 {
//     navigateExpertBlockage()
//     checkExpertMoves()
// }

// while switchCounter < 1 {
//     character.moveForward()
//     collectOrToggle()
// }