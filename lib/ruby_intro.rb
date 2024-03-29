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

def sum_to_n?(arr, n)
  # return false if array length is 0 or 1
  return false if arr.length < 2
  
  # Creating an empty set to store visited elements
  visited = Set.new
  
  arr.each do |num|
    # Calculating the difference required to reach n
    diff = n - num
    
    # Check if the set contains the difference
    return true if visited.include?(diff)
    
    # Add the current element to the set
    visited.add(num)
  end
  
  # return false, if no pair sums up to n
  false
end


# Part 2

def hello(name)
  # concatenating the String
  return "Hello, " + name
end

def starts_with_consonant?(s)
  # if string is empty return false
  return false if s.empty?

  # if the first element of string is not a vowel or non alphabetic, return true
  if s[0] =~ /[a-zA-Z]/ && s[0] =~ /[^aeiouAEIOU]/
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(s)
  # return false if string is not a valid binary number
  return false unless s.match?(/^[01]+$/)
  # convert string to integer and check if it's multiple of 4
  s = s.to_i
  if s%4 == 0
    return true
  else
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock


  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    
    # raise Argument Error if isbn string is empty or price of book is 0 or less than o
    raise ArgumentError if (@isbn.size == 0 or @price <=0)
  end
  
  # define get method for isbn
  def isbn
    @isbn
  end
  
   # define set method for isbn
  def isbn=(isbn)
    @isbn = isbn
  end

   # define get method for price
  def price
    @price
  end
  
   # define set method for price
  def price=(price)
    @price = price
  end

  def price_as_string
  # convert price to proper decimal format
		return "$#{'%.2f' % @price}"
	end

end
