/* Challenge: Practice pattern finding, decomposition, functions, and for loops.

Don't be intimidated by this challenge; you can do it!

Start by focusing on the group of gems and the portal closest to your character. Can you figure out the pattern to
collect the gems and move to the next location?
*/

// ORIGINAL COMPLETION (SEP 2021):

func moveForward2(){
    moveForward()
    moveForward()
}

func turnAround() {
    turnLeft()
    turnLeft()
}

func collectGem2Return(){
    moveForward()
    collectGem()
    moveForward()
    collectGem()
    turnAround()
    moveForward()
}

func solveSquare(){
    collectGem2Return()
    turnRight()
    moveForward()
    collectGem()
    turnAround()
    moveForward2()
    collectGem()
}

for i in 1 ... 3 {
    solveSquare()
    moveForward()
}

solveSquare()

// REVISED SOLUTION (OCT 2022):

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        moveForward()
    }
}

func turnAround() {
    for i in 1...2 {
        turnLeft()
    }
}

func collectGemRow() {
    for i in 1...2 {
        moveForward()
        collectGem()
    }
    turnAround()
    moveForward()
}

func solveSquare() {
    collectGemRow()
    turnRight()
    moveForward()
    collectGem()
    turnAround()
    moveForwardSpecific(n: 2)
    collectGem()
}

for i in 1...3 {
    solveSquare()
    moveForward()
}
solveSquare()
