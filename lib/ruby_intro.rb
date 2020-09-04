# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr.each do |i|
    sum += i
  end
  sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1

  max1 = arr[0]
  max2 = arr[1]
  arr.drop(2).each do |x|
    if x > max1
      max2 = max1
      max1 = x
    elsif x > max2
      max2 = x
    end
  end
  max1 + max2
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE

  if arr.empty?
    return false
  else
    arr.combination(2).to_a.each do |pair|
      return true if sum(pair) == n
    end
  end

  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  'Hello, ' + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  return s.to_i(2) % 4 == 0 if s =~ /^[0-1]+$/

  false
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0

    @isbn = isbn
    @price = price
  end

  attr_reader :isbn
  attr_writer :isbn

  attr_reader :price
  attr_writer :price

  def price_as_string
    priceStr = format('$%.2f', @price)
  end
end
