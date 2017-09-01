# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  if array.empty?
    return 0
  else
    sum = 0
    array.each { |x| sum += x }
    return sum
  end
end

def max_2_sum(array)
  if array.empty?
    return 0
  elsif array.length == 1
    return array[0]
  else
    return sum(array.max(2))
  end
end

def sum_to_n?(array, n)
  if array.length < 2
    return false
  else
    for i in 0..array.length - 1
      for j in 0..array.length - 1
        if i != j && array[i] + array[j] == n
          return true
        end
      end
    end
  return false
  end
end

# Part 2

def hello(name)
  return "Hello, " << name
end

def starts_with_consonant?(s)
  if s.empty?
    return false
  end
  char = s[0].downcase
  if !/[a-z]/.match(char)
    return false
  end
  vowels = ["a", "e", "i", "o", "u"]
  if vowels.include?(char)
    return false
  else
    return true
  end
end

def binary_multiple_of_4?(s)
  if !(s !~ /[^01]/)
    return false
  end
  if s == "0" || s[s.length - 2..s.length - 1] == "00"
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def price_as_string()
    return "$#{'%.2f' % @price}"
  end
end
