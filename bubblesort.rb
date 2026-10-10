def bubble_sort(numbers)
  (numbers.length-1).times do |index|
    puts index
    # from beginning to the end
    for index_inner in (0..numbers.length-2)
      # puts index_inner
      left_number = numbers[index_inner]
      right_number = numbers[index_inner + 1]
      # puts left_number
      # puts right_number
      if right_number < left_number
        # they need to swap
        numbers[index_inner + 1] = left_number
        numbers[index_inner] = right_number
      end
    end
  end
  return numbers
end

print bubble_sort([4,3,78,2,0,2])