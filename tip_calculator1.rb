meal = Float(25.02)
tax_percent = Float(8)
tip_percent = Float(20)

tax_value = tax_percent/100 * meal
meal_with_tax = meal + tax_value
tip_value = meal_with_tax * tip_percent/100
total_cost = tip_value + meal_with_tax

puts "The pre-tax cost of your meal was $%.2f " % meal
puts "At %.1f%%, tax for this meal is $%.2f" % [tax_percent, tax_value]
puts "For a %.1f%% tip, you should leave $%.2f" % [tip_percent, tip_value]
puts "The grand total for this meal is then $%.2f" % total_cost