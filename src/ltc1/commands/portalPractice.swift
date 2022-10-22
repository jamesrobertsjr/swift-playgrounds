/* Challenge: Teleport through the portal to collect a gem.

For your first challenge, there's a new element in Byte's world. A portal teleports Byte from one place to another,
with Byte facing the same direction going in and out.

You'll need to use all the commands you've learned so far, in the right order, to toggle open the switch, move through
the portal, and collect the gem.

Don't worry if you don't get it right the first time. This is your chance to experiment.
*/

// ORIGINAL SUCCESSFUL COMPLETION (SEP 2021):

moveForward()
moveForward()
moveForward()
turnLeft()
moveForward()
moveForward()
toggleSwitch()
moveForward()
moveForward()
turnLeft()
moveForward()
moveForward()
collectGem()

// REVISED SOLUTION (OCT 2022):

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        moveForward()
    }
}

moveForwardSpecific(n: 3)
turnLeft()
moveForwardSpecific(n: 2)
toggleSwitch()
moveForwardSpecific(n: 2)
turnLeft()
moveForwardSpecific(n: 2)
collectGem()
