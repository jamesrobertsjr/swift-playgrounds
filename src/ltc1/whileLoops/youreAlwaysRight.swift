/* Challenge: Use any coding construct and pattern you like!

For your final while loops challenge, toggle open all of the closed switches and collect the gems. Choose from your
existing skills to solve the puzzle.

Remember, it's okay if you don't get it on your first try! Professional coders hardly ever get things right the first
time around. Your goal is to write some code and keep tweaking it until it works. Good luck!
*/

// ORIGINAL SOLUTION (SEP 2021):

while !isBlocked {
    moveForward()
    if isOnGem {
        collectGem()
    } 
    if isOnClosedSwitch {
        toggleSwitch()
    }
    if isBlocked {
        turnRight()
    }
}

// REVISED SOLUTION (OCT 2022):

while !isBlocked {
    while (!isBlocked && isBlockedLeft) || (!isBlocked && !isBlockedLeft && !isBlockedRight) {
        moveForward()
        if isOnGem {
            collectGem()
        } else if isOnClosedSwitch {
            toggleSwitch()
        }
    }
    turnRight()
}