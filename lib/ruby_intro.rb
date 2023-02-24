# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return arr.max(2).sum

end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for x in 0..arr.length-1
    for p in x+1..arr.length-1
      if arr[x] + arr[p] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  output = "Hello, "
  return output.concat(name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.match?(/^[^aeiou]/i)
    if s.match?(/^\p{L}/i)
      return true
    end
  end

  return false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  stringVer = s.to_s
  if stringVer.match?(/\A[01]+\z/)
    if stringVer[stringVer.length-1] == '0' && stringVer[stringVer.length-2] == '0'
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError, "Invalid isbn."
    end

    if price <= 0
      raise ArgumentError, "Invalid price."
    end
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$#{'%.2f' % price}"
  end
end

