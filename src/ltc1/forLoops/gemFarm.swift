/* Challenge: Decompose multiple patterns into functions and loops.

In this challenge, there are gems to collect and switches to toggle open. You'll need to identify the patterns for gem
collection and switch activation. Then you'll write a function for each pattern and figure out how many times you'll
need to call those functions using for loops.
*/

// ORIGINAL COMPLETION (SEP 2021):

func moveForward2(){
    moveForward()
    moveForward()
}

func turnAround(){
    turnLeft()
    turnLeft()
}

func collectGem2Return(){
    moveForward()
    collectGem()
    moveForward()
    collectGem()
    turnAround()
    moveForward2()
}

func toggleSwitch2Return(){
    moveForward()
    toggleSwitch()
    moveForward()
    toggleSwitch()
    turnAround()
    moveForward2()
}

for i in 1 ... 3 {
    turnRight()
    collectGem2Return()
    toggleSwitch2Return()
    turnLeft()
    moveForward()
}

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
    moveForwardSpecific(n: 2)
}

func toggleSwitchRow() {
    for i in 1...2 {
        moveForward()
        toggleSwitch()
    }
    turnAround()
    moveForwardSpecific(n: 2)
}

for i in 1...3 {
    turnRight()
    collectGemRow()
    toggleSwitchRow()
    turnLeft()
    moveForward()
}
