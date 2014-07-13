# Introduction
#This is a basic Mad Libs quiz

#Here are the printed Instructions
puts "Welcome to Mad Libs"
p "We are happy to have you!"
p "I am going to give ask you for a few verbs and nouns..."
p "...and I need you to fill in!"

#Here is where we gather various nouns and verbs
p "Please give me a programming language you like!"
language = gets.chomp

p "Please give me two gemstones separated by a comma!"
gem = gets.chomp
gems_array = gem.split(',')

#Then we use those inputs to print a story!

p "Do you like to program in Ruby or #{language}"
p "I own a #{gems_array[0][/\w+/]} but want to buy a #{gems_array[1][/\w+/]}"

