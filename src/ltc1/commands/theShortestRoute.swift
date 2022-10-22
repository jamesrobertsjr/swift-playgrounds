/* Challenge: Evaluate options and pick the shortest route.

For the last challenge in this lesson, you'll make Byte move around in a bigger and more complicated world than you've
seen up to now. This world has two portal jumps, and there are many possible solutions.

Figure out the shortest route for Byte to pick up the gem and toggle open the switch. You can use one or both of the
portals, and you'll need to use the commands you've learned up to now. (You might need your debugging skills, too!)

Tip:
Want to change your character? Press on Byte to choose a new look.
*/

// ORIGINAL SUCCESSFUL COMPLETION (SEP 2021):

moveForward()
moveForward()
moveForward()
collectGem()
moveForward()
moveForward()
moveForward()
moveForward()
toggleSwitch()

// REVISED SOLUTION (OCT 2022):

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        moveForward()
    }
}

moveForwardSpecific(n: 3)
collectGem()
moveForwardSpecific(n: 4)
toggleSwitch()
