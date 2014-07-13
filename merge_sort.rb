def merge(a,b)
  return b if a.empty?
  return a if b.empty?
  
  if a.first <= b.first
    item = a.shift
  else
    item = b.shift
  end
  return [item] + merge(a,b)
end

def merge_sort array
  if array.length <= 1 
    then return array
  end
  
  middle = (array.length/2.0).round
  split_array = array.slice!(middle..-1)
  
  left_sorted = merge_sort(array)
  right_sorted = merge_sort(split_array)
  return merge(left_sorted,right_sorted)
end

      
 
 
