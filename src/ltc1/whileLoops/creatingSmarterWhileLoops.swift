/* Goal: Use a while loop and an if statement to open all the switches. 

Now try making your while loops even smarter using conditional code. To solve this puzzle, you'll need a while loop to
toggle open every switch along the three platforms. However, you can't simply use the condition isOnClosedSwitch, or the
loop will stop running when you reach a portal or an open switch.

1. Add a while loop by selecting while in the shortcut bar.
2. Add a condition to make your character continue moving forward until reaching the end of the third platform.
3. In your while loop, use an if statement to toggle only closed switches, not open ones.
*/

// ORIGINAL COMPLETION (SEP 2021):

while !isBlocked {
    if isOnClosedSwitch {
        toggleSwitch()
    }
    moveForward()
}
