/* Goal: Use an if statement to toggle only closed switches. 

Try running this puzzle a few times before you write any
code. You'll notice three switches on the walkway, each randomly toggled open or closed.

If you toggle a switch that's open, the switch will close. You'll ned to use an if statement to check each switch before
toggling it.

Use isOnClosedSwitch as the condition in the if statement so you can tell your character, "If you're on a closed switch,
toggle the switch."

Example:

```swift
if isOnClosedSwitch {
    toggleSwitch()
}
```

1. Move to the first switch.
2. Select if in the shortcut bar to add an if statement.
3. Add the condition isOnClosedSwitch, and toggle the switch if true.
4. Repeat for the two remaining switches.
*/

// ORIGINAL COMPLETION (SEP 2021):

for i in 1 ... 4 {
    moveForward()
    if isOnClosedSwitch {
        toggleSwitch()
    }
}
