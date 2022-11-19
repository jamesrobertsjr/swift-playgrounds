/* Challenge: Use all of your coding skills to collect a randomly determined number of gems, represented by totalGems.

Test your knowledge of parameters, initialization, methods, variables, and more in this challenge! As you go through the
puzzle world collecting gems, more will randomly appear. Your goal is to stop collecting gems when you've gathered a
number equal to the number you specified in totalGems.
*/

// * SOLUTION (NOV 2022):

let totalGems = randomNumberOfGems
let character = Character()
world.place(character, facing: north, atColumn: 2, row: 0)

var gemCounter = 0
var moveCounter = 0
let rightTurnJumps = [6, 7]
let leftTurnJumps = [13, 14]

func turnAroundCharacter() {
    for i in 1...2 {
            character.turnLeft()
    }
}

func navigateBlockage() {
    if !character.isBlocked {
        character.moveForward()
        moveCounter += 1
    } else {
        character.jump()
        moveCounter += 1
    } 
}

func checkJumps() {
    if rightTurnJumps.contains(moveCounter) {
        character.turnRight()
    } else if leftTurnJumps.contains(moveCounter) {
        character.turnLeft()
    } else if moveCounter == 20 {
        turnAroundCharacter()
        moveCounter = 0
    }
}

func collectGemAndCount() {
    if character.isOnGem {
        character.collectGem()
        gemCounter += 1
    }
}

while gemCounter < totalGems {
    collectGemAndCount()
    checkJumps()
    navigateBlockage()
}