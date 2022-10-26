/* Goal: Use an if statement inside a loop to toggle a switch or collect a gem.

In this puzzle, there are 12 tiles containing a gem, a switch, or a portal. If there is a gem on the tile, collect it.
If there is a portal, simply move forward. Watch the wireframes when you run the puzzle - they show the possible items
that might appear.

Instead of writing a long series of if statements, you can combine the power of conditional statements with loops, and
write your logic inside a for loop.

And, because a tile might contain a gem, a switch, or neither, this is a great opportunity to use an else if block to
check another condition.

1. In the for loop below, add an if statement after moveForward() to check isOnGem or isOnClosedSwitch.
2. In your if statement, add an else if block to check another condition.
*/

// ORIGINAL COMPLETION (SEP 2021):

for i in 1...12 {
    moveForward()
    if isOnClosedSwitch {
        toggleSwitch()
    } else if isOnGem {
        collectGem()
    }
}
