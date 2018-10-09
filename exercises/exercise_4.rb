require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(name:"Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true )
Store.create(name:"Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name:"Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: "true")

# @mens_stores.each { |store| puts " Men's apparel stores and revenues: #{store.name}, #{store.annual_revenue}" }

# Do another fetch but this time load stores that carry women's
# apparel and are generating less than $1M in annual revenue.

@womens_stores = Store.where("womens_apparel=? and mens_apparel=? and annual_revenue<?",true, false, 1000000)

# @womens_stores.each { |store| puts "Stores that only sell women's apparel and have less than 1M annual revenue: #{store.name}" }
