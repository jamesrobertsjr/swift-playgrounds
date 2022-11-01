/* Challenge: Toggle the same number of switches as gems collected.

For this challenge, toggle the same number of switches on the second platform as the number of gems collected on the
first platform.

Assignment shortcut
Use the compound assignment operator to add a value to a variable and assign the new value at the same time.
The two lines of code below actually do the exact same thing, but using += is faster!
Example

```swift
gemCounter = gemCounter + 1
gemCounter += 1
```

Use your knowledge of variables, assignment, and comparison operators to create a solution for this puzzle. Remember, 
it's okay if you don't get the solution on your first try! Trying different approaches allows you to learn from your 
mistakes, giving you a deeper understanding of the code that you write.
*/

// * ORIGINAL SOLUTION (SEP 2021):

// // Map Variables & Constants.
// var switchCounter = 0
// let gemCounter = numberOfGems

// // Movement Algorithm. Allows player to navigate corners.
// func navigateCorners() {
//     if isBlocked && isBlockedLeft {
//         turnRight()
//     } else if isBlocked && isBlockedLeft {
//         turnLeft()
//     }
// }

// // Task Completion Algorithm.
// func completeTasks() {
//     if isOnGem {
//         collectGem()
//     } else if isOnClosedSwitch {
//         toggleSwitch()
//         switchCounter = switchCounter + 1
//     }
// }

// // Map Completion Algorithm.
// while switchCounter < gemCounter {
//     moveForward()
//     navigateCorners()
//     completeTasks()
// }

// * REVISED SOLUTION (NOV 2022):

// Map Variables & Constants.
var switchCounter = 0
let gemCounter = numberOfGems

// Movement Algorithm. Allows player to navigate corners.
func navigateCorners() {
    if isBlocked && isBlockedLeft {
        turnRight()
    } else if isBlocked && isBlockedLeft {
        turnLeft()
    }
}

// Task Completion Algorithm.
func completeTasks() {
    if isOnGem {
        collectGem()
    } else if isOnClosedSwitch {
        toggleSwitch()
        switchCounter += 1
    }
}

// Map Completion Algorithm.
while switchCounter < gemCounter {
    moveForward()
    navigateCorners()
    completeTasks()
}