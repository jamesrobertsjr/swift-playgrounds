/* Goal: Use a loop to keep moving while not on an open switch.

This puzzle has a line of switches, with a different number of switches each time the puzzle runs. Instead of making
your character walk the entire line, checking each step for a switch to toggle open, you can use a form of conditional
code called a while loop.

Just like if statements, while loops allow you to determine when your code will run. A while loop runs a code block for
as long as a Boolean condition is true. When the condition is false, the while loop stops running.

1. Choose a Boolean condition for your while loop to determine when it will run.
2. Add commands to the while block to toggle open all the switches.
*/

// ORIGINAL SOLUTION (SEP 2021):

while isOnClosedSwitch {
    toggleSwitch()
    moveForward()
}