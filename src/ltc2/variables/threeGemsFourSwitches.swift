/* Challenge: Collect exactly three gems and toggle open four switches.

To collect the right number of gems and toggle open the right number of switches in this challenge, you'll need two
separate variables. As your character handles the gems and switches, you'll increment the right variable so you stop at
the right time.

Start by declaring one variable for the number of gems, and another for the number of switches. Use the guidelines below
to name your variables.

Naming a variable
Use camelCase: Start with a lowercase letter on the first word, and capitalize each new word.
Use a descriptive name: Give the variable a name that tells you what it stores, like numberOfCats.

Increment each variable by 1 when you collect a gem or toggle a switch. Use one of the comparison operators below to
create a condition in an if statement or while loop to tell your character when to stop.

More comparison operators
Less than operator: (a < b) returns true if a is less than b.
Greater than operator: (a > b) returns true if a is greater than b.
Equal to operator: (a == b) returns true if a equals b.
Not equal to operator: (a != b) returns true if a is not equal to b.
*/

// * ORIGINAL SOLUTION (SEP 2021):

// // Map Variables.
// var gemCounter = 0
// var switchCounter = 0

// // Movement Algorithm. Allows player to turn corners.
// func navigateCorners() {
//     if isBlocked && isBlockedLeft {
//         turnRight()
//     } else if isBlocked && isBlockedRight {
//         turnLeft()
//     }
// }

// // Map Completion Algorithm
// while !isBlocked {
//     // Movement Functions.
//     moveForward()
//     navigateCorners()
    
//     // Gem Collector.
//     if isOnGem && gemCounter < 3 {
//         collectGem()
//         gemCounter = gemCounter + 1
//     }
    
//     // Switch Toggler.
//     if isOnClosedSwitch && switchCounter < 4 {
//         toggleSwitch()
//         switchCounter = switchCounter + 1
//     }
// }

// * REVISED SOLUTION (NOV 2022):

// Map Variables.
var gemCounter = 0
var switchCounter = 0

// Movement Algorithm. Allows player to turn corners.
func navigateCorners() {
    if isBlocked && isBlockedLeft {
        turnRight()
    } else if isBlocked && isBlockedRight {
        turnLeft()
    }
}

// Map Completion Algorithm
while !isBlocked {
    // Movement Functions.
    moveForward()
    navigateCorners()
    
    // Gem Collector.
    if isOnGem && gemCounter < 3 {
        collectGem()
        gemCounter += 1
    }
    
    // Switch Toggler.
    if isOnClosedSwitch && switchCounter < 4 {
        toggleSwitch()
        switchCounter += 1
    }
}
