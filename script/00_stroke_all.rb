require_relative '../environment'

Animal.all.each do |animal|
  animal.stroke
end