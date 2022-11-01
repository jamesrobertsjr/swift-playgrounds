/* Goal: Collect as many gems as there are switches.

In this puzzle, you'll use a constant called switchCounter to collect as many gems as there are switches. Like a
variable, a constant is a named container that stores a value. However, the value of a constant cannot change while the
program is running.

You declare a constant using the word let instead of var, and you use it when you know that a value won't change.

Declaring a constant
To solve this puzzle, you'll write conditional code that compares the value of a gem-counting variable with
switchCounter, a constant that stores the number of switches that randomly appear in the puzzle. To compare these two
values, use a comparison operator such as <, >, ==, or !=.

1. Declare a variable to track the number of gems collected.
2. Compare the value of your gem-counting variable with switchCounter to determine when to stop collecting gems.
*/

// * ORIGINAL SOLUTION (SEP 2021):

// // Map Variables & Constants
// var gemCounter = 0
// let switchCounter = numberOfSwitches

// // Movement Algorithm. Allows player to navigate corners.
// func navigateCorners() {
//     if isBlocked && isBlockedLeft {
//         turnRight()
//     }
// }

// // Map Completion Algorithm.
// while gemCounter < switchCounter {
    
//     // Movement Functions.
//     moveForward()
//     navigateCorners()
    
//     // Gem Collector.
//     if isOnGem {
//         collectGem()
//         gemCounter += 1
//     }
// }

// * REVISED SOLUTION (NOV 2022):

// Map Variables & Constants
var gemCounter = 0
let switchCounter = numberOfSwitches

// Movement Algorithm. Allows player to navigate corners.
func navigateCorners() {
    if isBlocked && isBlockedLeft {
        turnRight()
    }
}

// Map Completion Algorithm.
while gemCounter < switchCounter {
    
    // Movement Functions.
    moveForward()
    navigateCorners()
    
    // Gem Collector.
    if isOnGem {
        collectGem()
        gemCounter += 1
    }
}

