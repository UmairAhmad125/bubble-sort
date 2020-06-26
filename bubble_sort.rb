# frozen_string_literal: true

# Bubble_sort

def bubble_sort(arra)
  length = arra.length
  (0..arra.length).each do
    (0..length - 2).each do |j|
      next unless arra[j] > arra[j + 1]

      temp = arra[j]
      arra[j] = arra[j + 1]
      arra[j + 1] = temp
    end
  end
  arra
end

def bubble_sort_by(arr)
  (0..arr.length).each do
    (0...arr.length - 1).each do |j|
      next unless yield(arr[j], arr[j + 1]).positive?

      temp = arr[j]
      arr[j] = arr[j + 1]
      arr[j + 1] = temp
    end
  end
  arr
end
puts "Executing Bubble_Sort_by\n\n"
puts bubble_sort([3, 4, 6, 1, 8])
puts "\nRunning Bubble Sort By\n\n"
result = bubble_sort_by(%w[hi hello holaja hey]) do |left, right|
  left.length - right.length
end
puts result
