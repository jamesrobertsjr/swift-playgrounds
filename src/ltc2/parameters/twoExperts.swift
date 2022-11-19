/* Challenge: Solve this puzzle using your knowledge of initialization, parameters, and other skills in your coding tool
belt.

To solve this challenge, you'll need two experts working together. Each needs to pick different locks to raise and lower
different platforms so you can collect the gems.

Remember how types are just blueprints for instances? You can initialize two instances of the same type. They're
basically identical, but you control them separately.
*/

// * SOLUTION (NOV 2022):

let expert1 = Expert()
let expert2 = Expert()
world.place(expert1, facing: east, atColumn: 0, row: 0)
world.place(expert2, facing: north, atColumn: 0, row: 4)

expert1.collectGem()
expert1.move(distance: 3)
expert1.turnLeft()
expert1.turnLock(up: true, numberOfTimes: 2)
expert1.turnRight()

expert2.collectGem()
expert2.turnLock(up: false, numberOfTimes: 1)
expert2.turnRight()

expert1.move(distance: 3)
expert1.turnLock(up: false, numberOfTimes: 2)

while !expert2.isBlocked {
    expert2.moveForward()
    if expert2.isOnGem {
        expert2.collectGem()
    }
}
