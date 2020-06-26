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