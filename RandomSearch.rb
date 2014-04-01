# Set Random Search Parameters
puts "Please input the maximum number of iterations"
@max_iterations = gets.to_i
puts "We are going to minimize a basic econonmic cost function"
puts "We are going to find the lowest cost achievable using different levels of 2 inputs"
puts "Please indicate the cost of input A"
@a = gets.to_i
puts "Please indicate the cost of input B"
@b = gets.to_i
puts "Thank you!"


# Basic Economic Cost Function
def cost_function(a,b,h,i)
  cost = (a*h)**2 + (b*i)**2
  return cost
end

# Random Search Algorithm
def search
  solution = {:Weight1 => nil, :Weight2 => nil}
  best = nil
  @max_iterations.times do |iteration|
    h = rand(1..100)
    i = rand(1..100)
    cost = cost_function(@a,@b,h/100.0,i/100.0)
    if best == nil || cost < best
      best = cost
      solution = {:Weight1 => h, :Weight2 => i}
    else 
      solution
    end
  end
  puts "The best mix is #{solution[:Weight1]}% of good A and #{solution[:Weight2]}% of good B"
end

search

  