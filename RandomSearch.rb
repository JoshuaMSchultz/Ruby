# Set Random Search Parameters
puts "Please input the maximum number of iterations"
@max_iterations = gets.to_i
puts "We are going to minimize a basic econonmic cost function"
puts "We are going to find the lowest cost achievable using different levels of 2 inputs"
puts "Please indicate the cost of Labor"
@labor = gets.to_i
puts "Please indicate the cost of Capital"
@capital = gets.to_i
puts "Thank you!"


# Some Cost Function
# Total Cost = (Cost of Capital * Capital Allocation)^2 + (Cost of Labor * Labor Allocation)^2
def cost_function(a,b,h,i)
  cost = (a*h)**2 + (b*i)**2
  return cost
end

# Random Search Algorithm
def search
  solution = {:LaborWeight=> nil, :CapitalWeight => nil}
  best = nil
  @max_iterations.times do |iteration|
    h = rand(1..100)
    i = 100 - h
    cost = cost_function(@labor,@capital,h/100.0,i/100.0).to_i
    if best == nil || cost < best
      best = cost
      solution = {:LaborWeight => h, :CapitalWeight => i}
    else 
      solution
    end
  end
  puts "The best mix is #{solution[:LaborWeight]}% of Labor and #{solution[:CapitalWeight]}% of Capital"
end

search

  