/* Challenge: Place your expert in the puzzle world, and solve the puzzle.

You can now place the expert in a specific location, but what if you want the expert to face a specific direction, as
well? You can call a different version of the place method that takes a direction as an additional argument.

Specifying a direction for your expert world.place (expert, facing: west, atColumn: 6, row: 3)

But wait-what does west mean? Think of it as a shorter form of dot notation that gives you a group of options to choose
from. In this case, you can choose • west, east, .north, or . south, but nothing else!

Choices like this work because each choice is of the same type-an enumeration-that defines that group of related values.
You could write each choice like Direction. north, for example, but you can also leave out Direction to make it simpler.
Start by initializing your expert. Then find world in the shortcut bar and add it to your code. Use dot notation to call
the place method that includes the facing parameter, and pass in your arguments.
Then solve the puzzle.
*/

// * SOLUTION (NOV 2022):

let expert = Expert()
world.place(expert, facing: .west, atColumn: 2, row: 8)

var gemCounter = 0
var moveCounter = 0

func collectGemAndCount() {
    if expert.isOnGem {
        expert.collectGem()
        gemCounter += 1
    }
}

func navigateBlockage() {
    if !expert.isBlocked {
        expert.moveForward()
        moveCounter += 1
    } else {
        expert.turnLeft()
        expert.moveForward()
        moveCounter += 1
    }
}

func checkMoves() {
    if moveCounter == 4 {
        expert.turnLockDown()
    } else if moveCounter == 8 {
        expert.turnLockUp()
        expert.turnRight()
    }
}

while gemCounter < 9 {
    collectGemAndCount()
    checkMoves()
    navigateBlockage()
}