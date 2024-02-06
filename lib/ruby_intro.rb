# frozen_string_literal: true

# Part 1

def sum(arr)
  # calculating sum by using inject function
  arr.inject(0, :+)
end

def max_2_sum(arr)
  #if array length is 0 return 0
  if arr.length == 0
    return 0
  #if array length is 1 return the element
  elsif arr.length == 1 
    return arr[0]
  #for remaining cases
  else
    # sort array
      arr = arr.sort{ |a, b| b <=> a }
    # sum of top 2 elements of the array
      sum = arr[0] + arr[1]
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
