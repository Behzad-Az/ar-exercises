require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# 1. Load the third store (into `@store3`) as you did the other two before.
# 2. Using Active Record's `destroy` method, delete the store from the database.
# 3. Verify that the store has been deleted by again outputting (`puts`ing) the `count` (as you did in Exercise 1.)

# Your code goes here ...
@store3 = Store.find(3).destroy
puts "\n store count at the end of Exc 3 is: #{Store.count}"
