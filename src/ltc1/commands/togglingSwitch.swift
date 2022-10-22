/* Goal: Collect the gem, then toggle the switch.

So far, you've learned how to make Byte move around and collect a gem. In this puzzle, you'll use another new command:
toggleSwitch().

Switches:
A switch might be toggled open or closed. 
Closed switches are off and awaiting activation.
Open switches are on and show a light inner core.

1. Enter the commands to move Byte to the gem, then collect it.
2. Continue entering commands to move Byte to the switch, then toggle it.
3. Run your code.
*/

// ORIGINAL SUCCESSFUL COMPLETION (SEP 2021):

moveForward()
moveForward()
turnLeft()
moveForward()
collectGem()
moveForward()
turnLeft()
moveForward()
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
turnLeft()
moveForwardSpecific(n: 2)
toggleSwitch()
