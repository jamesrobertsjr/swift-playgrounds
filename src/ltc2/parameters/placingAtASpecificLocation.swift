/* Goal: Place your character at a specific location in the puzzle world.
So far, the starting point for your character has been chosen for you. In this puzzle, you'll choose a starting point by
passing arguments into a method called place.

Using the place method:
place has three parameters:
`world. place (item: Item, atColumn: Int, row: Int)`
- item: Takes an input of type Item, which includes your Character and Expert types. Pass in an instance of your expert,
expert.
- atColumn: Takes an Int for the column you want your character to be placed at.
- row: Takes an Int for the row you want your character to be placed at. `world.place (expert, atColumn: 1, row: 1)`

1. Touch a tile in the puzzle world to reveal its coordinates.
2. Examine the map to find a starting location for your expert. Use the column and row value of that location in your
place method.
*/

// * SOLUTION (NOV 2022):

let expert = Expert()
world.place(expert, atColumn: 2, row: 6)

func turnAroundExpert() {
    for i in 1...2 {
        expert.turnLeft()
    }
}

func solveLockCollectGem() {
    expert.turnLeft()
    expert.turnLock(up: true, numberOfTimes: 1)
    turnAroundExpert()
    expert.move(distance: 1)
    expert.collectGem()
    turnAroundExpert()
    expert.move(distance: 1)
    expert.turnRight()
}

solveLockCollectGem()
expert.move(distance: 5)
solveLockCollectGem()
expert.move(distance: 6)
expert.collectGem()

