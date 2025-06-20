# Main Method
def selection_sort(arr)
  arr[0..-2].each_with_index do |num_to_sort, idx_to_sort| # No need to sort last idx
    
    sub_arr = arr[idx_to_sort..]
    diff = arr.length - sub_arr.length
    lowest_num_idx = find_idx_of_lowest_num(sub_arr) + diff

    unless idx_to_sort == lowest_num_idx
      arr[idx_to_sort], arr[lowest_num_idx] = arr[lowest_num_idx], arr[idx_to_sort]
    end
  end

  arr
end

# Helper Method
def find_idx_of_lowest_num(arr)
  lowest_num_idx = 0
  lowest_num = arr[lowest_num_idx]
  arr.each_with_index { |num, idx| lowest_num_idx = idx if num < lowest_num }
  lowest_num_idx
end

# Driver Code
p selection_sort([1, 0, 2, 6])    # => [0, 1, 2, 6]
p selection_sort([2])             # => [2]
p selection_sort([1, 100, 0])     # => [0, 1, 100]
p selection_sort([1, -1, 0])      # => [0, -1, 1]
p selection_sort([])              # => []
p selection_sort(["b", "c", "a"]) # => ["a", "b", "c"]