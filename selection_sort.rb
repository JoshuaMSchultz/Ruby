class Array
  def swap! (a,b)
    self[a], self[b] = self[b], self[a]
    self
  end
end

def selection_sort array
  (0..array.length-2).each do |index|
    if array[index] < array[index+1..array.length].min
      true
    else
      array.swap!(index,array.index(array[index+1..array.length-1].min))
    end
  end
  puts array  
end
  
selection_sort(["goof","fire","apple","charlie","Erika","elephant","dog"])