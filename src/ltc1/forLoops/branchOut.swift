/* Challenge: Decompose repeating patterns into functions and for loops.

You've learned about the basics of coding, and you've solved a lot of puzzles with your character. Now that you know
about commands, functions, and for loops, you're ready to combine your skills for this challenge!

There are three stairways in the puzzle world, and each shares the same set of tasks to perform. Can you figure out the
pattern for the tasks and write the code?
*/

// ORIGINAL COMPLETION (SEP 2021):

func moveForward2(){
    moveForward()
    moveForward()
}

func moveForward7(){
    moveForward2()
    moveForward2()
    moveForward2()
    moveForward()
}

func turnAround(){
    turnLeft()
    turnLeft()
}

func solveStair(){
    moveForward2()
    turnRight()
    moveForward7()
    toggleSwitch()
    turnAround()
    moveForward7()
    turnRight()
}

for i in 1 ... 3 {
    solveStair()
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

for i in 1...3 {
    moveForwardSpecific(n: 2)
    turnRight()
    moveForwardSpecific(n: 7)
    toggleSwitch()
    turnAround()
    moveForwardSpecific(n: 7)
    turnRight()
}