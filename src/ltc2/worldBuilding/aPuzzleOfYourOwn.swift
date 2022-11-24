/* Challenge: Change all elements of the world to create your own puzzle!

In addition to placing new blocks, stairs, and portals, you can also add gems and switches.

Adding gems and switches:
Just like when you add a block, you use the place method on world to place gems and switches.

```swift
world.place (Gem(), atColumn: 2, row: 3)
world.place (Switch (), atColumn: 3, row: 4)
```

The shortcut bar contains the methods available on the world instance. Use these methods to create your own puzzle - add 
your own characters, experts, gems, portals, and more! Be creative, and have fun!
*/

// * SOLUTION (NOV 2022):

world.place(Block(), atColumn: 0, row: 2)
world.place(Block(), atColumn: 1, row: 2)
world.place(Block(), atColumn: 2, row: 2)
world.place(Block(), atColumn: 3, row: 2)
world.place(Block(), atColumn: 4, row: 2)
world.place(Block(), atColumn: 5, row: 2)
world.place(Block(), atColumn: 5, row: 3)
world.place(Block(), atColumn: 5, row: 6)
world.place(Block(), atColumn: 6, row: 6)
world.place(Block(), atColumn: 7, row: 6)

world.place(Stair(), facing: .south, atColumn: 5, row: 4)
world.place(Stair(), facing: .south, atColumn: 5, row: 5)

world.place(Gem(), atColumn: 0, row: 0)
world.place(Gem(), atColumn: 0, row: 2)
world.place(Gem(), atColumn: 2, row: 2)
world.place(Gem(), atColumn: 4, row: 2)
world.place(Gem(), atColumn: 5, row: 3)
world.place(Gem(), atColumn: 5, row: 5)
world.place(Gem(), atColumn: 6, row: 6)

world.place(Switch(), atColumn: 0, row: 1)
world.place(Switch(), atColumn: 1, row: 2)
world.place(Switch(), atColumn: 3, row: 2)
world.place(Switch(), atColumn: 5, row: 2)
world.place(Switch(), atColumn: 5, row: 4)
world.place(Switch(), atColumn: 5, row: 6)
world.place(Switch(), atColumn: 7, row: 6)

let character = Character()
world.place(character, facing: .north, atColumn: 0, row: 0)

var gemCounter = 0
var switchCounter = 0

func completeTasks() {
    if character.isOnGem {
        character.collectGem()
        gemCounter += 1
    } else if character.isOnClosedSwitch {
        character.toggleSwitch()
        switchCounter += 1
    }
}

func navigateBlockage() {
    if !character.isBlocked {
        character.moveForward()
    } else if character.isBlocked && character.isBlockedLeft {
        character.turnRight()
    } else if character.isBlocked && character.isBlockedRight {
        character.turnLeft()
    }
}

while switchCounter < 7 {
    completeTasks()
    navigateBlockage()
}
