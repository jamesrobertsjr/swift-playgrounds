/* Challenge: Assign a new value to gemCounter for each additional gem collected.

You've created a variable and changed its value. In this challenge, you'll practice that skill by correctly setting the
value of the variable as you collect additional gems.

Assign gemCounter a beginning value of 0. Move your character to each gem and collect it. Then assign the correct value
to gemCounter for each additional gem that's collected.
*/

// * ORIGINAL SOLUTION (SEP 2021):

// var gemCounter = 0

// func moveForwardCollectGem() {
//     moveForward()
//     collectGem()
// }

// moveForwardCollectGem()
// gemCounter = 1
// moveForwardCollectGem()
// gemCounter = 2
// moveForwardCollectGem()
// gemCounter = 3
// moveForwardCollectGem()
// gemCounter = 4
// moveForwardCollectGem()
// gemCounter = 5

// * REVISED SOLUTION (NOV 2022):

var gemCounter = 0

while !isBlocked {
    moveForward()
    if isOnGem {
        collectGem()
        gemCounter += 1
    }
}