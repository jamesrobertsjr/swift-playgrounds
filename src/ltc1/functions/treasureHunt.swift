/* Challenge: Decompose patterns and create your own functions.

In this last challenge, start by finding a small pattern of commands, and create a function that calls them. Use that
function to start solving parts of the puzzle.

Example:
```swift
func moveThenToggle() {
    moveForward()
    moveForward()
    toggleSwitch()
}

As you find more complex parts of the puzzle, define a new function that reuses what's in your first function. Then use
both functions to solve the puzzle.
*/

// INITIAL SUCCESSFUL COMPLETION (SEP 2021):

func moveForward2() {
    moveForward()
    moveForward()
}

func moveForward4() {
    moveForward()
    moveForward()
    moveForward()
    moveForward()
}

func turnAround() {
    turnLeft()
    turnLeft()
}

func move2ThenToggle() {
    moveForward2()
    toggleSwitch()
    turnAround()
    moveForward2()
}

func move2ThenToggle2() {
    moveForward2()
    toggleSwitch()
    moveForward2()
    toggleSwitch()
    turnAround()
}

move2ThenToggle()
move2ThenToggle()
turnRight()
move2ThenToggle2()
moveForward4()
move2ThenToggle2()

// REVISED SOLUTION (OCT 2022):

// func moveForwardSpecific(n: Int) {
//     for i in 1...n {
//         moveForward()
//     }
// }

// func turnAround() {
//     for i in 1...2 {
//         turnLeft()
//     }
// }

// func move2ThenToggle(x: Int, y: Int) {
//     for i in 1...x {
//         moveForwardSpecific(n: 2)
//         toggleSwitch()
//     }
//     turnAround()
//     moveForwardSpecific(n: y)
// }

// for i in 1...2 {
//     move2ThenToggle(x: 1, y: 2)
// }

// turnRight()

// for i in 1...2 {
//     move2ThenToggle(x: 2, y: 4)
// }

// ----

func moveForwardSpecific(n: Int) {
    for i in 1...n {
        moveForward()
    }
}

func turnAround() {
    for i in 1...2 {
        turnLeft()
    }
}

for i in 1...2 {
    moveForwardSpecific(n: 2)
    toggleSwitch()
    turnAround()
    moveForwardSpecific(n: 2)
}

turnRight()

for i in 1...2 {
    for i in 1...2 {
        moveForwardSpecific(n: 2)
        toggleSwitch()
    }
    turnAround()
    moveForwardSpecific(n: 4)
}