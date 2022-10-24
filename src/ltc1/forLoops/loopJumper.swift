/* Challenge: Identify the repeating pattern for jumping through the portals.

In this challenge, a simple pattern works for each of the gems. Figure out how to collect the first gem, and see if that
same pattern works for all the gems.
*/

// ORIGINAL COMPLETION (SEP 2021):

func moveForward2(){
    moveForward()
    moveForward()
}

for i in 1 ... 5 {
    moveForward()
    turnLeft()
    moveForward2()
    collectGem()
    turnRight()
}

// REVISED SOLUTION (OCT 2022):

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        moveForward()
    }
}

for i in 1...5 {
    moveForward()
    turnLeft()
    moveForwardSpecific(n: 2)
    collectGem()
    turnRight()
}