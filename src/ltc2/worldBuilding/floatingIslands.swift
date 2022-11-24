/* Challenge: Add blocks, stairs, and portals.
For this challenge, practice your world-building skills by adding all the elements needed to solve the puzzle. There are
many different solutions, so decide whether you prefer to use a portal to jump around, or add blocks to bridge gaps.

Remember:
You can create an instance and place it with the same line of code:
`world.place (Block, atColumn: 2, row: 2)`

First, you'll need to initialize a character to solve the puzzle. See if you can think it through by using pseudocode
that navigates through the puzzle world. Then use your code to change the structure of the puzzle world.
*/

// * SOLUTION (NOV 2022):

world.place(Block(), atColumn: 1, row: 2)
world.place(Block(), atColumn: 3, row: 2)
world.place(Block(), atColumn: 7, row: 4)
world.place(Block(), atColumn: 7, row: 3)
world.place(Block(), atColumn: 5, row: 3)
world.place(Block(), atColumn: 1, row: 6)

for i in 1...2 {
    world.place(Block(), atColumn: 3, row: 1)
    world.place(Block(), atColumn: 6, row: 5)
    world.place(Block(), atColumn: 6, row: 6)
    world.place(Block(), atColumn: 4, row: 6)
}

world.place(Stair(), facing: .west, atColumn: 3, row: 2)
world.place(Stair(), facing: .south, atColumn: 7, row: 5)
world.place(Stair(), facing: .north, atColumn: 5, row: 5)

let whitePortal = Portal(color: #colorLiteral(red: 1.0000001192092896, green: 1.0000001192092896, blue: 1.0000001192092896, alpha: 1.0))
world.place(whitePortal, atStartColumn: 3, startRow: 1, atEndColumn: 6, endRow: 4)

let character = Character()
world.place(character, facing: .west, atColumn: 3, row: 0)

var gemCounter = 0
var switchCounter = 0

func completeTasks() {
    if character.isOnGem {
        character.collectGem()
        gemCounter += 1
    } else if character.isOnClosedSwitch {
        character.toggleSwitch()
        switchCounter += 1
    }
}

func navigateBlockage() {
    if !character.isBlocked {
        character.moveForward()
    } else if character.isBlocked && character.isBlockedLeft {
        character.turnRight()
    } else if character.isBlocked && character.isBlockedRight {
        character.turnLeft()
    }
}

func checkMoves() {
    if gemCounter == 0 {
        whitePortal.isActive = false
    } else {
        whitePortal.isActive = true
    }
}

while switchCounter < 6 {
    completeTasks()
    checkMoves()
    navigateBlockage()
}