/* Goal: Place a character and an expert, then use the jump ( ability to solve the puzzle.

In this puzzle, you'll choose starting locations for both your character and your expert. You'll also need a new ability
to solve this puzzle. Just as your expert has the special skill of turning locks, your character has the special skill
of jumping.

New ability!
The Character type has the ability to jump up and down when you use the following command:
`jump ()`

1. Identify starting locations for your character and your expert.
2. Initialize both characters and place them at your starting locations.
3. Use the jump () command to make your character jump when needed to solve the puzzle.
*/

// * SOLUTION (NOV 2022):

let expert = Expert()
let character = Character()
world.place(expert, facing: north, atColumn: 3, row: 0)
world.place(character, facing: north, atColumn: 0, row: 0)

func characterJumpSpecific(times: Int) {
    for i in 1...times {
        character.jump()
    }
}

func collectGemJumpTwo(times: Int) {
    for i in 1...times {
        character.collectGem()
        characterJumpSpecific(times: 2)
    }
}

expert.toggleSwitch()
expert.turnLockUp()

collectGemJumpTwo(times: 2)
character.turnRight()
collectGemJumpTwo(times: 2)
character.turnLeft()
collectGemJumpTwo(times: 1)
character.collectGem()