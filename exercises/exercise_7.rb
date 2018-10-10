require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

@store_name = gets.chomp

newStore = Store.create(name: @store_name)
puts newStore.errors[:annual_revenue] # => ["is too short (minimum is 3 characters)"]
