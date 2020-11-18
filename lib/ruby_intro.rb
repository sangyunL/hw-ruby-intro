# When done, submit this entire file to the autograder.

# part 1

def sum arr
  if arr.length>0
    hap=0
    arr.each { |value| hap+=value }
    return hap
  else
    return 0
  end
end

def max_2_sum arr
  max1=0
  max2=0
  if arr.length>1
    max1=arr.sort[-1]
    max2=arr.sort[-2]
    hap=max1+max2
    return hap
  elsif arr.length == 1
    return arr[0]
  else
    return 0
  end
end
  
def sum_to_n? arr, n
  result = false
  if arr.length>1
    for i in 1..arr.length-1
      for j in 0..i-1
        if arr[j]+arr[i]==n
           result=true
           break
        end
      end
    end
  end
  return result
end

# Part 2
def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant?(s) 
  if s =~ /\A(?=[^aeiou])(?=[a-z])/i
    return true
  else
    return false  
  end
end


def binary_multiple_of_4?(s)
  if s=='0'
    return true
  end
  
  if s.length<3
    return false
  end
  
  s.each_char do |x|
    unless x=='0' or x=='1'
      return false
    end
  end
  if s[-1]=='0' and s[-2]=='0' and s.to_i>=100
    return true
  end
  false
end
 
# Part 3

class BookInStock
  def initialize(isbn,price)
    @isbn=isbn
    @price=price
    if @isbn.empty? || @price<=0
      raise ArgumentError
    end
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    "$#{'%.2f'%@price}"
  end
  
end
