
#Goal is to create methods that return an array of the Fibonacci sequence.
#The length of the array is determined by argument 'n'

#Iterative solution to Fibonacci sequencing
def fibs(n)
  array = []
  n.times do |i|
    array << i if i < 2
    array << array[-2] + array[-1]
  end
  return array
end

#Recursive solution to Fibonacci sequencing
def fibs_rec(n)
  return [] if n.zero?
  return [0] if n == 1
  return [0, 1] if n == 2

  array = fibs_rec(n - 1)
  array << (array[-1] + array[-2])
end



