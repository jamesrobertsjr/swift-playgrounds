/* Goal: Use the AND operator to combine two conditions and adjust your path if both are true.

The logical AND operator (&&) combines two Boolean conditions and runs your code only if both are true. For example, in
the following code, isBlocked AND isOnClosedSwitch must both be true.

Example:

```swift
if isBlocked && isOnClosedSwitch {
    toggleSwitch()
}

New condition!
The Boolean condition isBlockedLeft is true if you can't move 1 tile to the left and false if you can make that move.

1. Add an if statement in the for loop, then add a condition to check whether you character is on a gem.
2. In the shortcut bar, select &&, then add a second condition.
3. If you character is on a gem AND blocked on the left, turn right and toggle the switch. Otherwise, if on a gem,
collect it.
*/

// ORIGINAL SOLUTION (SEP 2021):

func moveForward2() {
    moveForward()
    moveForward()
}

func turnAround() {
    turnLeft()
    turnLeft()
}

for i in 1...7 {
    moveForward()
    if isOnGem && isBlockedLeft {
        collectGem()
        turnRight()
        moveForward2()
        toggleSwitch()
        turnAround()
        moveForward2()
        turnRight()
    } else if isOnGem {
        collectGem()
    }
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
    moveForwardSpecific(n: 2)
    toggleSwitch()
    turnAround()
    moveForwardSpecific(n: 2)
    turnRight()
}

for i in 1...7 {
    moveForward()
    if isOnGem && isBlockedLeft {
        solveRightSide()
    } else if isOnGem {
        collectGem()
    }
}