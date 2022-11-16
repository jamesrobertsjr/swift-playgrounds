/* Challenge: Create an instance of type Expert and use the expert to solve the puzzle.

Use this challenge to practice initializing an instance of your expert. As you write a solution to the puzzle, remember
what you've learned about factoring your code into clear and reusable functions.

New ability
In addition to turnLockUp (), you can also use turnLockDown () to move a platform down from its current position

Start by initializing an instance of your expert. Direct your expert to move around, collect the gems, and turn the lock
to reveal the path to the disconnected platforms.
*/

// * SOLUTION (NOV 2022):

let expert = Expert()
var gemCounter = 0
var moveCounter = 0

func turnAround() {
    for i in 1...2 {
        expert.turnLeft()
    }
}

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        expert.moveForward()
        moveCounter += 1
    }
}

func navigateBlockage() {
    if !expert.isBlocked {
        expert.moveForward()
    }
}

for i in 1...2 {
    for i in 1...3 {
        moveForwardSpecific(n: 2)
        expert.collectGem()
        if moveCounter == 10 {
            expert.turnLockDown()
        }
        turnAround()
        moveForwardSpecific(n: 2)
        expert.turnRight()
    }
    if moveCounter >= 12 && moveCounter <= 15 {
        moveForwardSpecific(n: 3)
        expert.turnRight()
    }
}
