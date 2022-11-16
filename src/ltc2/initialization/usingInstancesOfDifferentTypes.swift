/* Goal: Initialize one instance of type Expert and one of type Character.

When writing code, it's common to use multiple instances and elements that work together to solve a bigger problem. If
you're building a photo-editing app, for example, you need to work with a camera to capture images, and a filter library
to apply interesting effects.

In this puzzle, you'll need the lock-picking abilities of your expert to help you get your character through the portal
to a gem on a remote platform.

1. Create an instance of type Expert and an instance of type Character.
2. Tell your expert to turn the lock.
3. Tell your character to use the portal and collect both gems.
*/

// * ORIGINAL SOLUTION (NOV 2022):

let expert = Expert()
let character = Character()

func moveForwardSpecific(type: String, times: Int) {
    if type == "expert" {
        for i in 1...times {
            expert.moveForward()
        }
    } else if type == "character" {
        for i in 1...times {
            character.moveForward()
        }
    }
}

func turnLockSpecific(direction: String, times: Int) {
    if direction == "up" {
        for i in 1...times {
            expert.turnLockUp()
        }
    } else if direction == "down" {
        for i in 1...times {
            expert.turnLockDown()
        }
    }
}

expert.moveForward()
expert.turnLockUp()
character.moveForward()
character.collectGem()
character.moveForward()
character.turnRight()
moveForwardSpecific(type: "character", times: 2)
turnLockSpecific(direction: "down", times: 2)
character.moveForward()
character.collectGem()
