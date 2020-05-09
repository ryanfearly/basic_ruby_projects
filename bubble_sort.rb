# ruby bubble sort
def bubble_sort(num_array)
  repeat = true
  while repeat do
    repeat = false
    for i in (0...num_array.length - 1)
      num_1 = num_array[i]
      num_2 = num_array[i+1]
      if num_1 > num_2
        num_array[i] = num_2
        num_array[i + 1] = num_1
        repeat = true
      end
    end
  end
  p num_array
end

a = [3, -19, -2, 0, -18, 5, 6, -7, -17, -14, 14, 11, -3, 10, 1, 12, 4, 16, -9, -20]
bubble_sort(a)