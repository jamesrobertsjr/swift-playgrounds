/* Goal: Collect exactly seven gems.

You've learned to use a variable to keep track of a changing value, incrementing it when needed. In this new puzzle,
you'll use this knowledge to collect exactly seven gems. The gems appear not only in random locations, but also at
random times.

To solve the puzzle, you'll need to use a while loop with a Boolean condition that returns false after you've collected
all seven gems. You'll use a comparison operator (<) to compare the gemCounter value to the Int value of 7.

Using a comparison operator:

```swift
while gemCounter < 7 {
}
```

1. Declare your gemCounter variable and set the value to 0.
2. Increment the gemCounter value each time your character collects a gem.
3. Use a while loop to keep collecting gems until all seven are collected.
*/

// * ORIGINAL SOLUTION (SEP 2021):

// var gemCounter = 0

// func turnAround() {
//     turnLeft()
//     turnLeft()
// }

// while gemCounter < 7 {
//     moveForward()
//     if isBlocked {
//         turnAround()
//     }
//     if isOnGem {
//         collectGem()
//         gemCounter = gemCounter + 1
//     }
// }

// * REVISED SOLUTION (NOV 2022):

var gemCounter = 0

func turnAround() {
    for i in 1...2 {
        turnLeft()
    }
}

while gemCounter < 7 {
    moveForward()
    if isOnGem {
        collectGem()
        gemCounter += 1
    }
    if isBlocked {
        turnAround()
    }
}