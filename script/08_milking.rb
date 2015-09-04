require_relative '../environment'

bess = Cow.find_by_name('Bessie')
bess.milk

shep = Dog.find_by_name('Shep')
shep.milk