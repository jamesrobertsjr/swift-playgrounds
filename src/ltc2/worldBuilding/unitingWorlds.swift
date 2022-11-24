/* Goal: Add a new block to bridge two worlds.

Up to now, the puzzle world has been defined for you. Now you can start making changes to that world.

The switch in this puzzle is in an unreachable area, so you'll need to add a tile to connect the two pieces of the
puzzle.

Placing a block
- Here's how you would place a block at coordinate (1, 1):

```swift
let block1 = Block ( )
world.place(block1, atColumn: 1, row: 1)
```

1. First, create an instance of type Block.
2. Next, use dot notation to access the world instance and call the place method.
3. Pass your arguments into the place method. Use your Block instance for the item parameter, and a set of coordinates
for the atColumn and row parameters.
*/

// * SOLUTION (NOV 2022):

let block1 = Block()
world.place(block1, atColumn: 3, row: 3)
var switchCounter = 0

while switchCounter < 1 {
    if isOnClosedSwitch {
        toggleSwitch()
        switchCounter += 1
    }
    if !isBlocked {
        moveForward()
    } else if isBlocked && isBlockedRight {
        turnLeft()
    } else {
        turnRight()
    }
}
