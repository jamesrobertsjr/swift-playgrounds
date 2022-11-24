/* Challenge: Build your world and collect a randomly determined number of gems, represented by the totalGems constant.

In this puzzle, a random number of gems is generated each time you run your code. Your goal is to modify the puzzle
world so you can effectively navigate around it, picking up gems until you've collected all of them. The number of gems
is determined by a value stored in the constant totalGems.

Keep track of the number of gems collected to figure out when to stop running your code.
*/

// * SOLUTION (NOV 2022):

let totalGems = randomNumberOfGems

world.place(Block(), atColumn: 0, row: 2)
world.place(Block(), atColumn: 3, row: 3)

let character = Character()
world.place(character, facing: .south, atColumn: 7, row: 3)

var gemCounter = 0

func collectGemAndCount() {
    if character.isOnGem {
        character.collectGem()
        gemCounter += 1
    }
}

func navigateBlockage() {
    if !character.isBlocked {
        character.moveForward()
    } else {
        character.turnLeft()
    }
}

while gemCounter < totalGems {
    collectGemAndCount()
    navigateBlockage()
}
