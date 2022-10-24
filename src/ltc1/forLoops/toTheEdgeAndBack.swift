/* Challenge: Use a for loop to repeat a rotating pattern.

In this challenge, you'll practice finding repeating patterns. You must activate four switches, moving to each switch
from the central point.

Break down the puzzle by figuring out the sequence of commands needed for your character to activate the first switch
and return to the central point. This is the sequence that repeats, so put the code inside the curly braces.

Can you figure out which extra repeating command will make the repeating pattern work for all the switches?
*/


// ORIGINAL COMPLETION (SEP 2021):

func moveForward2() {
    moveForward()
    moveForward()
}

func turnAround() {
    turnLeft()
    turnLeft()
}

func moveForward2ToggleSwitch() {
    moveForward2()
    toggleSwitch()
    turnAround()
    moveForward2()
    turnRight()
}

for i in 1 ... 4 {
    moveForward2ToggleSwitch()
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

for i in 1...4 {
    moveForwardSpecific(n: 2)
    toggleSwitch()
    turnAround()
    moveForwardSpecific(n: 2)
    turnRight()
}
