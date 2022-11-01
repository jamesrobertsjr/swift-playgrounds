/* Goal: Create a variable to track the number of gems collected.

For this puzzle, you'll need to keep track of how many gems you collect. This value should be 0 in the beginning; after
your character picks up the first gem, the value should change to 1.

To declare (create) a variable, use var and give your variable a name. Then use the assignment operator (=) to set an
initial value for the variable.

Example:
`var myAge = 15`

After you declare a new variable, you may assign it a new value at any time:

Example
`myAge = 16`

1. Set the initial value of gemCounter to 0.
2. Move to the gem and pick it up.
3. Set the value of gemCounter to 1.
*/

// * ORIGINAL SOLUTION (SEP 2021):

var gemCounter = 0

while !isBlocked {
    moveForward
    if isOnGem {
        collectGem()
    }
}

gemCounter = 1
