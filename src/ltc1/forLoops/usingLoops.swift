/* Goal: Use a for loop to repeat a sequence of commands.

To break down coding tasks, you wrote functions for repeated patterns. Now you'll call one function multiple times using
a loop. With a loop, you can write your code once and enter the number of times to repeat it.

In this puzzle, there's a gem in the same position in each row. You'll collect the gems by following the same pattern
multiple times. This is the perfect place for a loop!

1. Enter the solution for one row inside the curly braces.
2. Decide how many times to repeat the loop.
3. Select the number placeholder and specify the number of repetitions.
*/

// ORIGINAL SOLUTION (SEP 2021)

for i in 1...5 {
    moveForward()
    moveForward()
    collectGem()
    moveForward()
}
