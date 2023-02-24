# Write an algorithm to sort a given array of integers in ascending order.

def sort(array)
  n = array.length
  # Loop i dari 0 hingga n-2:
  (0..n-2).each do |i|
    # Loop j dari i+1 hingga n-1:
    (i+1..n-1).each do |j|
      # Jika array[i] lebih besar dari array[j], tukar nilai array[i] dengan array[j]
      if array[i] > array[j]
        temp = array[i]
        array[i] = array[j]
        array[j] = temp
      end
    end
  end
  # Kembalikan array yang telah diurutkan
  return array
end

puts sort([1, 2, 3, 4, 5])
puts "--------------------"
puts sort([1, 2, 3, 4, 5, -6, -7, -8, -9, -10])
puts "--------------------"
puts sort([5])
puts "--------------------"
puts sort([ ])
puts "--------------------"