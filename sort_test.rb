require "minitest/autorun"
require_relative "insertion_sort"
require_relative "selection_sort"
require_relative "merge_sort"

 
class TestSort < Minitest::Test
  
  @@unsorted = [5,8,10,7,3,1,4,9,2,6]
  @@sorted   = [1,2,3,4,5,6,7,8,9,10]
 
  def test_base_case
    assert_equal @@unsorted.sort, @@sorted
  end
  
  def test_insertion_sort
    assert_equal insertion_sort(@@unsorted), @@sorted
  end
  
  def test_selection_sort
    assert_equal selection_sort(@@unsorted), @@sorted
  end
  
  def test_merge_sort
    assert_equal merge_sort(@@unsorted), @@sorted
  end
 
end