def insertion_sort array
  array.each {|word| array << word.downcase}
  (1..array.length-1).each do |pull_position|
    checked_value = array.delete_at(pull_position)
    insert_point = pull_position
   
    while checked_value < array[insert_point -1] and insert_point >0 do
      insert_point -= 1
    end
      array.insert(insert_point,checked_value)
  end
   puts array
end
  
  insertion_sort(["goof","fire","apple","charlie","Erika","elephant","dog"])