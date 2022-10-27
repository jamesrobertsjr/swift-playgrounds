/* Challenge: Test the state of the world to change your route.

For this last challenge, you need to collect the gems and toggle the switches along the center platform, but several
baths take you away from it.

You can use conditional code to detect whether your character is on a gem or a closed switch, and take a different
action if your character is on one instead of the other.

Example:

```swift
for i in 1...5 {
    moveForward()
    if isOnGem {
        solveRightSide()
    } else if isOnClosedSwitch {
        solveLeftSide()
    }
}
```
*/

// ORIGINAL COMPLETION (SEP 2021):

func moveForward3() {
    moveForward()
    moveForward()
    moveForward()
}

func turnAround() {
    turnLeft()
    turnLeft()
}

func solveRightSide() {
    turnRight()
    moveForward3()
    turnLeft()
    moveForward()
    collectGem()
    turnAround()
    moveForward()
    turnRight()
    moveForward3()
    turnRight()
}

func solveLeftSide() {
    turnLeft()
    moveForward()
    collectGem()
    turnAround()
    moveForward()
    turnLeft()
}

func switchOrCollectGem() {
    if isOnGem {
        collectGem()
        solveRightSide()
    } else if isOnClosedSwitch {
        toggleSwitch()
        solveLeftSide()
    }
}

for i in 1 ... 5 {
    moveForward()
    switchOrCollectGem()
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

func solveRightSide() {
    collectGem()
    turnRight()
    moveForwardSpecific(n: 3)
    turnLeft()
    moveForward()
    collectGem()
    turnAround()
    moveForward()
    turnRight()
    moveForwardSpecific(n: 3)
    turnRight()
}

func solveLeftSide() {
    toggleSwitch()
    turnLeft()
    moveForward()
    collectGem()
    turnAround()
    moveForward()
    turnLeft()
}

for i in 1...5 {
    moveForward()
    if isOnGem {
        solveRightSide()
    } else if isOnClosedSwitch {
        solveLeftSide()
    }
}