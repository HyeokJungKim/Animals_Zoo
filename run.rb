require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

bronx_zoo = Zoo.new("Bronx Zoo","Bronx, NY")
silver_rat = Animal.new("grey rat", "Rat", 2, bronx_zoo)
baboon = Animal.new("chimpie", "monkey", 7, bronx_zoo)
snake = Animal.new("Sam-Doesnt-Like-Snakes", "snake", 6, bronx_zoo)
penguin = Animal.new("Spottie", "bird", 3, bronx_zoo)
gold_rat = Animal.new("golden", "Rat", 2, bronx_zoo)

binding.pry
puts "done"
