/* Challenge: Identify a repeating pattern and define a function.

In this challenge, there are lots of gems to collect - so many, in fact, that there are several ways to solve the
puzzle.

Choose a path that repeats a pattern and use that pattern in your function.

If your code doesn't work the first time, keep playing with it - practice makes perfect! (But as always, you can move
on whenever you're ready.)
*/

func moveCollectGem() {
    collectGem()
    moveForward()
    collectGem()
    moveForward()
    collectGem()
}

moveCollectGem()
turnRight()
moveForward()
turnRight()
moveCollectGem()
turnLeft()
moveForward()
turnLeft()
moveCollectGem()
