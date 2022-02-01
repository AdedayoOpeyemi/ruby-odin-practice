def stock_picker(days_array)
  best_pair = [0,0]

  days_array.each_with_index do |elm, index|
    for i in index+1...days_array.length
      if days_array[i] - elm > days_array[best_pair[1]] - days_array[best_pair[0]]
        best_pair = [index, i]
      end
    end
  end

  return best_pair
end

p stock_picker([17,3,6,9,15,8,6,1,10])