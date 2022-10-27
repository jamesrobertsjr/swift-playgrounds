/* Challenge: Use the NOT operator to turn left when blocked.

Just like the previous exercise, the puzzle world in this challenge is slightly different each time you run it. Try
figuring out how to use the logical NOT operator (!) to solve it.

New Condition!
The condition isBlocked is either or true or false, giving you a Boolean value.
If you can't move forward one tile in the current direction, isBlocked is true. If you can move forward, isBlocked is
false.
*/

// ORIGINAL SOLUTION (SEP 2021):

for i in 1 ... 16 {
    if !isBlocked {
        moveForward()
    } else {
        turnLeft()
    }
    if isOnClosedSwitch {
        toggleSwitch()
    }
}

// REVISED SOLUTION (OCT 2022):

for i in 1...13 {
    if !isBlocked {
        moveForward()
    } else {
        turnLeft()
        moveForward()
    }
    if isOnClosedSwitch {
        toggleSwitch()
    }
}