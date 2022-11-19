/* Challenge: Use all of your coding skills to collect a randomly determined number of gems, represented by totalGems.

Test your knowledge of parameters, initialization, methods, variables, and more in this challenge! As you go through the
puzzle world collecting gems, more will randomly appear. Your goal is to stop collecting gems when you've gathered a
number equal to the number you specified in totalGems.
*/

// * SOLUTION (NOV 2022):

let expert = Expert()

func move(distance: Int) {
    for i in 1...distance {
        expert.moveForward()
    }
}

move(distance: 6)
expert.turnRight()
move(distance: 2)
expert.turnRight()
move(distance: 5)
expert.turnLeft()
move(distance: 5)
expert.turnLeft()
expert.turnLockUp()
expert.turnLeft()
move(distance: 3)
expert.turnRight()
move(distance: 3)
expert.turnRight()
move(distance: 4)
expert.collectGem()
