/* Challenge: Add blocks to bridge all the gaps.

For this challenge, practice modifying the puzzle world. You'll need to add multiple blocks to reach the gems. You can
create a stack by placing one block on top of another.

Be sure to use loops, and factor your code into functions so you don't have to write the same lines of code more than
once.
*/

// * SOLUTION (NOV 2022):

let block1 = Block()
let block2 = Block()
let block3 = Block()
let block4 = Block()
let block5 = Block()

world.place(block1, atColumn: 2, row: 2)
world.place(block2, atColumn: 2, row: 2)
world.place(block3, atColumn: 4, row: 2)
world.place(block4, atColumn: 6, row: 2)
world.place(block5, atColumn: 6, row: 2)

var switchCounter = 0
var gemCounter = 0

func turnAround() {
    for i in 1...2 {
        turnLeft()
    }
}

func completeTasks() {
    if isOnGem {
        collectGem()
        gemCounter += 1
    } else if isOnClosedSwitch {
        toggleSwitch()
        switchCounter += 1
        turnRight()
    }
}

func navigateBlockage() {
    if !isBlocked {
        moveForward()
    } else {
        turnRight()
    }
}

while gemCounter < 3 {
    completeTasks()
    navigateBlockage()
}