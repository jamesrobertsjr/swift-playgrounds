/* Goal: Use the NOT operator to adjust your character's path when there's no gem on a tile.

The logical NOT operator (!) changes the value of a Boolean to its opposite - it inverts the value.

For example, if the condition isBlocked is false, then !isBlocked is true.

Run the puzzle a few times to see what changes. Notice that there are always four gems, but one is at the bottom of a
stairway. When there's no gem on the top platform, the stairs extend from that tile.

Use ! to determine when your character is NOT on a gem. If not on a gem, turn and collect the gem at the end of the
stairs. Otherwise, collect the gem.
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

func deviationPath() {
    turnLeft()
    moveForward2()
    collectGem()
    turnAround()
    moveForward2()
    turnLeft()
}

func notOnGem() {
    if !isOnGem {
        deviationPath()
    } else {
        collectGem()
    }
}


for i in 1 ... 4 {
    moveForward()
    notOnGem()
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

func solvePathDeviation() {
    turnLeft()
    moveForwardSpecific(n: 2)
    collectGem()
    turnAround()
    moveForwardSpecific(n: 2)
    turnLeft()
}

for i in 1...4 {
    moveForward()
    if !isOnGem {
        solvePathDeviation()
    } else {
        collectGem()
    }
}