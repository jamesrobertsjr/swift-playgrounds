/* Challenge: Use nested loops and conditions to move around a changing world.

In this challenge, run the puzzle a couple of times to see how the size of the puzzle world changes while the shape
remains the same.

As in the previous exercise, you can use nested loops to create a solution that will work no matter what size the puzzle
world is.
*/

// ORIGINAL SOLUTION (SEP 2021):

while !isBlocked {
    while !isOnOpenSwitch {
        moveForward()
        if isOnClosedSwitch {
            toggleSwitch()
        }
        if isBlocked {
            turnRight()
        }
    }
}
