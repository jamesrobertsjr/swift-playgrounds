/* Goal: Write a function to turn a lock up or down a given number of times.

Previously, you used parameters to define a move function with an input, distance.
In this puzzle, you'll define a turnLock function that uses the parameters up and number0fTimes to determine the
direction and number of times your expert should turn the lock.

turnLock parameters explained:
up takes an input of type Bool (Boolean), indicating whether to turn the lock up (true) or down (false). number0fTimes
takes an input of type Int, indicating the number of times to turn the lock.

1. Use both parameters, up and number0fTimes, to define your function.
2. Check the value of up to determine if you should call turnLockUp() or turnLockDown ().
3. Use the number0fTimes value to determine how many times to run either turnLockUp ( ) or turnLockDown ().
*/

// * SOLUTION (NOV 2022):

let expert = Expert()
let character = Character()

func turnLock(up: Bool, numberOfTimesL Int) {
    if up {
        for i in 1...numberOfTimes {
            expert.turnLockUp()
        }
    } else {
        for i in 1...numberOfTimes {
            expert.turnLockDown()
        }
    }
}

func turnAround(type: String) {
    if type == "expert" {
        for i in 1...2 {
            expert.turnLeft()
        }
    } else if type == "character" {
        for i in 1...2 {
            character.turnLeft()
        }
    }
}

turnLock(up: true, numberOfTimes: 3)
turnAround(type: "expert")
turnLock(up: true, numberOfTimes: 3)

character.move(distance: 3)
character.collectGem()
turnAround(type: "character")
character.move(distance: 1)
character.turnLeft()
character.move(distance: 1)
character.turnLeft()

turnLock(up: false, numberOfTimes: 3)
turnAround(type: "expert")
turnLock(up: false, numberOfTimes: 2)

character.move(distance: 1)
character.collectGem()
turnAround(type: "character")
character.move(distance: 1)

turnLock(up: false, numberOfTimes: 1)

character.move(distance: 2)
character.collectGem()
