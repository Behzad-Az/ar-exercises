require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'
require_relative './exercise_8'

puts "Exercise 9"
puts "----------"

@store1 = Store.find(1)
if @store1.destroy
  puts "\n \n \n \n \n"
  puts "Store destroyed! It has #{@store1.employees.size} =/"
else
  puts "\n \n \n \n \n"
  puts "Could not destroy store :)"
end

# Make sure empty stores can be destroyed
@empty_store = Store.create(name: 'Test Empty Store', annual_revenue: 0)
if @empty_store.destroy
  puts "\n \n \n \n \n"
  puts "Empty Store destroyed! This is good"
else
  puts "\n \n \n \n \n"
  puts "Whoa! Empty store should be destroyable... Not cool!"
end
