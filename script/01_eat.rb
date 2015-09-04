require_relative '../environment'

bessie = Cow.find_by_name('Bessie')
bessie.eat('grass')

shep = Dog.find_by_name('Shep')
shep.eat(bessie)
