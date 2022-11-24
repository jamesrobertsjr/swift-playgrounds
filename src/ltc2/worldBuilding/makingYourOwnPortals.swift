/* Goal: Add a portal to jump to a different area.

You've used portals to teleport between areas of the puzzle world. In this puzzle, you'll create a portal between two
floating islands.

First, you'll need to create an instance of type Portal and pass in a color. Next, you'll place the portal by specifying
coordinates for both the starting side of the portal and the ending side. An example is shown below.

Placing a portal:
`world.place (newPortal, atStartColumn: 1, startRow: 1, atEndColumn: 2, endRow: 2)`

1. Place your portal by calling the place method that includes the parameters atStartColumn, startRow, atEndColumn, and
endRow.
2. Collect all the gems, using the portals to jump from one island to the other.
*/

// * SOLUTION (NOV 2022):

let greenPortal = Portal(color: #colorLiteral(red: 0.0, green: 0.9768045545, blue: 0.0, alpha: 1.0))
var gemCounter = 0
var moveCounter = 0

func turnAround() {
    for i in 1...2 {
        turnLeft()
    }
}

func collectGemAndCount() {
    if isOnGem {
        collectGem()
        gemCounter += 1
    }
}

func navigateBlockage() {
    if !isBlockedLeft && !isBlockedRight {
        turnLeft()
        moveForward()
        moveCounter += 1
    } else if !isBlocked {
        moveForward()
        moveCounter += 1
    } else {
        turnAround()
        moveForward()
        moveCounter += 1
    }
}

func checkMoves() {
    if moveCounter == 6 {
        world.place(greenPortal, atStartColumn: 1, startRow: 5, atEndColumn: 5, endRow: 1)
    } else if moveCounter == 7 {
        greenPortal.isActive = false
    }
}

while gemCounter < 8 {
    checkMoves()
    collectGemAndCount()
    navigateBlockage()
}
