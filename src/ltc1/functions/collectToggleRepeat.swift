/* Challenge: Define a function for a repeating pattern.

In this challenge, there are several gems to collect, and each gem is located next to a switch. Instead of repeating
the same pattern of commands you used in previous puzzles, you can write a new function that includes existing commands
to handle each gem-and-switch pair.

You can name your function anything you like in this challenge. After you've named and defined your function, call it
by entering its name, just like you've done with all the other functions you've used.
*/

func moveCollectToggle() {
    moveForward()
    collectGem()
    moveForward()
    toggleSwitch()
}

moveCollectToggle()
moveForward()
turnLeft()
moveCollectToggle()
moveForward()
moveForward()
turnLeft()
moveCollectToggle()
moveForward()
turnLeft()
moveCollectToggle()
