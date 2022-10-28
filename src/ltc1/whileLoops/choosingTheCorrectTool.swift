/* Goal: Choose the best loop to collect all the gems.

This puzzle has six gems and a simple pattern for your character to follow. The best way to solve this puzzle is to use
a loop, but which kind? You could use a while loop to keep moving while nothing blocks the way. Or, because you know how
many gems there are, you could use a for loop to repeat the pattern a specific number of times.

Sometimes deciding how to solve a coding problem is just a matter of which option feels better to you. When coders are
faced with this type of choice, they base their decisions on which option results in a shorter solution or has more
possibilities for reuse.

1. Identify the pattern to move from gem to gem.
2. Choose a type of loop and use it to solve the puzzle.
*/

// ORIGINAL SOLUTION (SEP 2021):

func turnAndCollectGem() {
    moveForward()
    turnLeft()
    moveForward()
    collectGem()
    turnRight()
}

while !isBlocked {
    turnAndCollectGem()
}