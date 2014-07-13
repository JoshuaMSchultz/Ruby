#def merge_sort(array)
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
      
 
 p merge([1,2,3,],[4,5,6])
 
