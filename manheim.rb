#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

def multiples
  (1..999).select { |x| (x % 5 == 0 || x % 3 == 0) }.reduce(:+)
end

puts multiples

# OR

sum = 0
(1..999).select do |x|
  if x % 3 == 0 || x % 5 == 0
    sum += x
  end
end
puts sum

#Another way to solve the problem

y = 0
(1..999).each { |x| y = y + x if (x % 3 == 0) || (x % 5 == 0) }
puts y
