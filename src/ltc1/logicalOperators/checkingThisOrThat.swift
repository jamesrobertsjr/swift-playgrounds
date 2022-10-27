/* Goal: Use the OR operator to adjust your path if either of two conditions is true.

The last logical operator is the logical OR operator (||), which combines two Boolean conditions and runs your code if
at least one is true. For example, in the following code, either isOnGem OR isBlockedLeft must be true in order to run
moveForward().

Example:

```swift
if isOnGem || isBlockedLeft {
    moveForward()
}
```

If neither condition is true, the code doesn't run. If one or both are true, the code runs.

1. Use the || operator to check whether one of two conditions is true. Hint: You may be blocked either in the front or
on the left.
2. If either is true, turn right and move forward.
3. If neither are true, move forward.
*/

// ORIGINAL SOLUTION (SEP 2021):

func navigateBlockage() {
    if isBlocked || isBlockedLeft {
        turnRight()
    }
}

for i in 1 ... 12 {
    moveForward()
    navigateBlockage()
    if isOnGem {
        collectGem()
    }
}

// REVISED SOLUTION (OCT 2022):

func navigateBlockage() {
    if isBlocked || isBlockedLeft {
        turnRight()
        moveForward()
    } else {
        moveForward()
    }
}

for i in 1...12 {
    navigateBlockage()
    if isOnGem {
        collectGem()
    }
}