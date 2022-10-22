/* Goal: Use swift commands to tell byte to move and collect a gem.

Your character, Byte, loves to collect gems but can't do it alone. In this first puzzle, you'll need to write Swift 
commands to move Byte to move Byte across the puzzle world to collect a gem.

1. Look for the gem in the puzzle world.
2. Enter the correct combination of the moveForward() and collectGem() commands.
3. Press Run My Code.
*/

// ORIGINAL SUCCESSFUL COMPLETION (SEP 2021):

moveForward()
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
collectGem()
