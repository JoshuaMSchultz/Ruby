puts "How much was your meal?"
meal = Float(gets.chomp)

puts "What is the tax percentage?"
tax_percent = Float(gets.chomp)

puts "What tip percentage to you want to leave?"
tip_percent = Float(gets.chomp)

def as_dollar_amount(original_amount, percent)
  original_amount * percent/100
end

tax_value = as_dollar_amount(meal, tax_percent)
meal_with_tax = meal + tax_value
tip_value = as_dollar_amount(meal_with_tax, tip_percent)
total_cost = tip_value + meal_with_tax

puts "The pre-tax cost of your meal was $%.2f " % meal
puts "At %.1f%%, tax for this meal is $%.2f" % [tax_percent, tax_value]
puts "For a %.1f%% tip, you should leave $%.2f" % [tip_percent, tip_value]
puts "The grand total for this meal is then $%.2f" % total_cost