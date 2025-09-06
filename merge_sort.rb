#A method that ulitizes a recursive 'merge-sort' algorithm to sort an array of integers


def merge_sort(array)
  return array if array.length == 1   #Base case. Returns an array with a single element
  left_array = array.slice(0...array.length / 2)
  right_array = array.slice(array.length..-1)
  merge(merge_sort(left_array), merge_sort(right_array))  #passes split arrays as params to be sorted
end

def merge(left, right)
  sorted = []
  until left.length == 0 || right.length == 0
    sorted << (left.first <= right.first ? left.shift : right.shift)  #does the work of comparing array elements and putting them in a new array
  end
  sorted + left + right #captures any odd elements(inherently the largest value) and adds them into sorted array
end
