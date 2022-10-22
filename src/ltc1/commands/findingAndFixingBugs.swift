/* Goal: Find the bugs and fix them.

When you write code, it's easy to make mistakes. A mistake that keeps your program from running correctly is called a
bug, and finding and fixing bugs is called debugging.

The code below contains one or more bugs. To debug it, rearrange the commands into the right order to solve the puzzle.

1. Run the code to see where the mistake occurs.
2. Identify the command that's in the wrong place, then press the command to select it.
3. Drag the command to the correct location, then run the code again to test it.
*/

// ORIGINAL SUCCESSFUL COMPLETION (SEP 2021):

moveForward()
moveForward()
turnLeft()
moveForward()
collectGem()
moveForward()
toggleSwitch()

// REVISED SOLUTION (OCT 2022):

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        moveForward()
    }
}

moveForwardSpecific(n: 2)
turnLeft()
moveForward()
collectGem()
moveForward()
toggleSwitch()
