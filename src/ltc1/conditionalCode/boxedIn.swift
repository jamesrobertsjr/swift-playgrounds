/* Challenge: Factor your code well with conditions, functions, and loops.

For this challenge, your character is surrounded by a grid of possible gem or switch locations. Figure out how to move
to the right locations to collect gems and toggle switches open.

You'll need functions, loops, and conditions.
*/

// ORIGINAL COMPLETION (SEP 2021):

func switchOrGem() {
    if isOnClosedSwitch {
        toggleSwitch()
    } else if isOnGem {
        collectGem()
    }
}

func moveAndSwitchOrGem() {
    moveForward()
    switchOrGem()
}

for i in 1...2 {
    moveAndSwitchOrGem()
    turnLeft()
}

for i in 1...2 {
    moveAndSwitchOrGem()
    moveAndSwitchOrGem()
    turnLeft()
}

for i in 1...2 {
    moveAndSwitchOrGem()
}

// REVISED SOLUTION (OCT 2022):

func switchOrGem() {
    if isOnClosedSwitch {
        toggleSwitch()
    } else if isOnGem {
        collectGem()
    }
}

func moveAndSwitchOrGem() {
    moveForward()
    switchOrGem()
}

for i in 1 ... 2 {
    moveAndSwitchOrGem()
    turnLeft()
}

for i in 1 ... 2 {
    for i in 1...2 {
        moveAndSwitchOrGem()
    }
    turnLeft()
}

for i in 1 ... 2 {
    moveAndSwitchOrGem()
}