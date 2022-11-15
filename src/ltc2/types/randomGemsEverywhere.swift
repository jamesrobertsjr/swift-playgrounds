/* Challenge: Collect a randomly determined number of gems, represented by totalGems.

In this challenge, gems appear in random locations and at random times. You'll need to write an algorithm that keeps
your character moving efficiently around the puzzle world, picking up any gems that appear.

In addition to making your character move efficiently, think about how you can also make your code efficient. Try to
break down behaviors into reusable functions so you need fewer lines of code. This is called factoring your code, and
it's not just great for reusing functions. It also makes it easier for anyone looking at your code to figure out what's
going on.
*/

// * SOLUTION (NOV 2022):

let totalGems = randomNumberOfGems
var gemCounter = 0
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
        turnAround()
    }
}

func activatePortals(BooleanValue: Bool) {
    if BooleanValue {
        pinkPortal.isActive = true
        bluePortal.isActive = true
    } else {
        pinkPortal.isActive = false
        bluePortal.isActive = false
    }
}

func operatePortals() {
    if moveCounter == 8 || moveCounter == 14 {
        activatePortals(BooleanValue: true)
    } else if moveCounter == 1 || moveCounter == 9 || moveCounter == 15 {
        activatePortals(BooleanValue: false)
    }
}

func completeTasks() {
    if isOnGem {
        collectGem()
        gemCounter += 1
    }
}

while gemCounter < totalGems {
    operatePortals()
    completeTasks()
    navigateBlockage()
}
