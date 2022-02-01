def bubble_sort(array)
  loop do
    swap = false
    for index in 0..array.length-2
      if array[index] > array[index + 1]
        array[index],array[index + 1] = array[index + 1], array[index]
        swap = true
      end
    end
    break if swap == false
    swap = false
  end

  array
end

puts bubble_sort([4,3,78,2,0,2])