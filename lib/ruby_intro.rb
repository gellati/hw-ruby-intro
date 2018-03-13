# coding: utf-8
# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty? then return 0 end
  arr.reduce(:+)

#  if arr.empty?
#    0
#  else
#    arr.reduce(:+)
#  end

end



def max_2_sum arr
#  sum arr unless arr.length > 2
  if arr.empty? then return 0 end
  if arr.length < 2 then sum arr end
  arr.sort{|x,y| y <=> x}.take(2).reduce(:+)

#  if arr.empty?
#    0
#  elsif arr.length == 1
#    arr.last
#  else
#    arr.max(2){|a,b| a <=> b}.reduce(:+)
#  end

end

def sum_to_n? arr, n
  puts arr.combination(2).to_a.uniq{|s| s.first}
  arr.combination(2).to_a.uniq.flat_map{|x| return x == n ? true : false }

#  if arr.length <= 1
#    false
#  else
#    arr.combination(2).to_a.map{|x| x.reduce(:+) }.include?(n) # then true else end}.include?(true)
#  end

end

# Part 2

def hello(name)
  return "Hello, "+name
end

# http://www.rexegg.com/regex-class-operations.html
def starts_with_consonant? s
  if s =~ /^[A-Za-z&&[^aeiouAEIOU]]/
    true
  else
    false
  end
end

def binary_multiple_of_4? s
  if s =~ /^[01]+$/
    if (s.to_i(2) % 4) == 0
      true
    else
      false
    end
  else
    false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError.new('ISBN should not be an empty string') if isbn.to_s.empty?
    raise ArgumentError.new('Price should not be negative') if price <= 0
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn, :price

  def price_as_string
    p = "$%.2f" % @price
  end
end
