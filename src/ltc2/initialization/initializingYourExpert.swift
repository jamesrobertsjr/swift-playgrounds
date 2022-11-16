/* Goal: Initialize an instance of type Expert and solve the puzzle with the turnLockUp () method.

In this puzzle, there's a new element to deal with: a lock. To solve the puzzle, you'll need to turn the lock, which
raises a platform in front of an unreachable gem.

The character you've worked with up to now has certain abilities, like moving forward, collecting gems, and toggling
switches. One ability your character doesn't have is picking locks. You'll need a new character--an expert-to do that.
Because your expert won't change, you'll declare it by using a constant, and then initialize it by assigning it the
Expert type.

Initializing an expert
`let expert = Expert ()`

1. Initialize your expert.
2. Move your expert around and give commands using dot notation.
3. Use the turnLockUp () method on the lock to reveal the path between the platforms.
*/

// * SOLUTION (NOV 2022):

let expert = Expert()
var gemCounter = 0

func turnAround() {
    for i in 1...2 {
        expert.turnLeft()
    }
}

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        expert.moveForward()
    }
}

func collectGemAndCount() {
    if expert.isOnGem {
        expert.collectGem()
        gemCounter += 1
    }
}

moveForwardSpecific(n: 3)
expert.turnLockUp()
turnAround()
moveForwardSpecific(n: 3)
expert.turnLeft()

while gemCounter < 3 {
    moveForwardSpecific(n: 3)
    collectGemAndCount()
    turnAround()
    moveForwardSpecific(n: 3)
    expert.turnLeft()
}