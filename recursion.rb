#Fibonacci
require 'pry-byebug' 

def iterate_fib(n)
  fib = [0, 1]
  (n - 1).times do
    fib << (fib[-1] + fib[-2])
  end
return fib[-1]
end

def recursive_fib(n)
  if n < 2
    return n
  else
    n = recursive_fib(n - 1) + recursive_fib(n - 2)
  end
end



binding.pry
put 'hey'
