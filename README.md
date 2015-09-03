# Zoo

A short introduction to errors in Ruby.

## Manual usage

`irb -r './environment.rb'`

Run a few bits of code to demonstrate animal retrieval

`Animal.find(1)`
`Animal.first.stroke`
`Dog.first`
`Cat.find_by_name('Shep')`

## Scripts

All working as it should

`ruby scripts/00_stroke_all.rb`

An incorrect assumption has been made

`ruby scripts/01_pet.rb`

Lets play a game of "guess the error"

`ruby scripts/02_error.rb`
`ruby scripts/03_error.rb`
`ruby scripts/04_error.rb`
`ruby scripts/05_error.rb`

Milking the cow, then milking the dog:

`ruby scripts/06_milking.rb`