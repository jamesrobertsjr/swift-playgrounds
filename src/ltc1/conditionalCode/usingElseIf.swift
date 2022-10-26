/* Goal: Use if and else if to toggle a switch or collect a gem.

Again, try running the puzzle a few times, and you'll find that switches and gems both appear in random places. To
figure out whether to toggle a switch or collect a gem, use an if statement to check one possible condition and an else
if block to check the other.

Example:

```swift
if isOnClosedSwitch {
    toggleSwitch()
} else if isOnGem {
    collectGem()
}

This new isOnGem condition will help determine whether your character is on a gem.

1. Move to the first randomized tile, then add an if statement.
2. Inside your if statement, add an else if block.
3. Enter code to toggle the switch open if on a closed switch, and to collect a gem if on a gem.
4. Repeat for the second tile.
*/

// ORIGINAL COMPLETION (SEP 2021):

for i in 1...2 {
    moveForward()
    if isOnClosedSwitch {
        toggleSwitch()
    } else if isOnGem {
        collectGem()
    }
}
