/* Challenge: Use your expert and the turnLock method to collect all the gems.

In this puzzle, you can use both turnLock and move to help your character collect all the gems. There are many ways to
solve this puzzle, so take some time to think through several different approaches before you get started. Good luck!
*/

// * SOLUTION (NOV 2022):

let expert = Expert()
let character = Character()

var gemCounter = 0
var moveCounter = 0
let rightTurnMoves = [2, 4, 8, 12, 16, 18, 22]

func turnAround(type: String) {
    if type == "expert" {
        for i in 1...2 {
            expert.turnLeft()
        }
    } else if type == "character" {
        for i in 1...2 {
            character.turnLeft()
        }
    }
}

func turnAllLocks(up: Bool, numberOfTimes: Int) {
    for i in 1...4 {
        if up {
            expert.turnLock(up: true, numberOfTimes: numberOfTimes)
        } else {
            expert.turnLock(up: false, numberOfTimes: numberOfTimes)
        }
        expert.turnRight()
    }
}

func checkMoves() {
    if moveCounter == 0 {
        turnAllLocks(up: true, numberOfTimes: 4)
    } else if moveCounter == 9 {
        turnAllLocks(up: false, numberOfTimes: 3)
        character.turnLeft()
    } else if rightTurnMoves.contains(moveCounter) {
        character.turnRight()
    }
}

func collectGemAndCount() {
    if character.isOnGem {
        character.collectGem()
        gemCounter += 1
    }
}

func navigateBlockage() {
    if !character.isBlocked {
        character.moveForward()
        moveCounter += 1
    } else {
        turnAround(type: "character")
    }
}

while gemCounter < 7 {
    collectGemAndCount()
    checkMoves()
    navigateBlockage()
}