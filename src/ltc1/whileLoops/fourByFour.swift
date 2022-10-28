/* Challenge: Choose the best loops and toggle the switches.

For this challenge, there are several ways to solve the puzzle--you could use while loops, for loops, or a combination
of the two types.

Figure out a pattern to toggle open each switch, and see if you can break it down to use a combination of two loops.
It's up to you which loops you use!
*/

// ORIGINAL SOLUTION (SEP 2021):

func moveForward3() {
    moveForward()
    moveForward()
    moveForward()
}

func checkSwitch() {
    if isOnClosedSwitch {
        toggleSwitch()
    }
}

while !isBlocked {
    moveForward3()
    checkSwitch()
    turnRight()
}

// REVISED SOLUTION (OCT 2022):

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        moveForward()
    }
}

func checkSwitch() {
    if isOnClosedSwitch {
        toggleSwitch()
    }
}

while !isBlocked {
    moveForwardSpecific(n: 3)
    checkSwitch()
    turnRight()
}