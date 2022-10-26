/* Challenge: Use an if statement to trigger a sequence of commands if your character is on a gem.

Congratulations! You've learned how to write conditional code using if statements and else if blocks.

A condition like isOnGem is always either true or false. This is known as a Boolean value. Coders often use Boolean
values with conditional code to tell a program when to run certain blocks of code.

1. In the if statement below, use the Boolean condition isOnGem and add commands to run if the condition is true.
2. Modify or keep the existing else block to run code if your Boolean condition is false.
3. If necessary, tweak the number of times your for loop runs.
*/

// ORIGINAL COMPLETION (SEP 2021):

for i in 1...12 {
    moveForward()
    if isOnGem {
        collectGem()
        turnLeft()
    }
}
