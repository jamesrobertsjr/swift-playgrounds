/* Goal: Add stairs to solve the puzzle.

Your next world-building element is a set of stairs. Unlike simple blocks, stairs need to face the right direction, from
low side to high side. Remember, you can choose a direction by passing . north, .south, .east, or . west into the facing
parameter.

Placing stairs:
Here's how you would place north-facing stairs at coordinate (2, 3):

```swift
let newStair = Stair()
world. place (newStair, facing: .north, atColumn: 2, row: 3)
```

However, you can use a shortcut to place the stairs more quickly! Instead of initializing your stairs instance
separately, you can initialize and place the instance at the same time.

Shortcut:
This line of code initializes and places an unnamed instance of type Stair:
`world.place (Stair, facing: north, atColumn: 1, row: 1)`

1. Use the code above as a guide to place stairs in the puzzle world. Try using the shortcut to place the stairs more
efficiently.
2. Solve the puzzle using the rest of the coding skills you've learned so far.
*/

// * SOLUTION (NOV 2022):

world.place(Stair(), facing: .south, atColumn: 3, row: 1)
world.place(Stair(), facing: .south, atColumn: 3, row: 3)
world.place(Stair(), facing: .east, atColumn: 5, row: 4)
world.place(Stair(), facing: .east, atColumn: 5, row: 5)
world.place(Stair(), facing: .east, atColumn: 5, row: 6)
world.place(Stair(), facing: .west, atColumn: 1, row: 4)
world.place(Stair(), facing: .west, atColumn: 1, row: 5)
world.place(Stair(), facing: .west, atColumn: 1, row: 6)
world.place(Stair(), facing: .north, atColumn: 3, row: 7)

var switchCounter = 0
var moveCounter = 0

func turnAround() {
    for i in 1...2 {
        turnLeft()
    }
}

func navigateBlockage() {
    if !isBlocked {
        moveForward()
        moveCounter += 1
    } else {
        turnRight()
    }
}

func checkMoves() {
    if moveCounter == 4 {
        turnLeft()
    } else if moveCounter == 20 {
        turnRight()
    } else if moveCounter == 25 {
        turnAround()
    }
}

func toggleSwitchAndCount() {
    if isOnClosedSwitch {
        toggleSwitch()
        switchCounter += 1
    }
}

while switchCounter < 9 {
    toggleSwitchAndCount()
    checkMoves()
    navigateBlockage()
}
