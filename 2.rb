# Design an algorithm to find the maximum value in an array of integers.

def find_max(array)
  # Inisialisasi variable max dengan nilai array[0]
  max = array[0]
  # Loop i dari 1 hingga n-1, dengan n adalah jumlah elemen array:
  (1..array.length - 1).each do |i|
    # Jika array[i] lebih besar dari max, update nilai max dengan array[i]
    if array[i] > max
      max = array[i]
    end
  end
  # Kembalikan nilai max
  return max
end

puts find_max([1,2,3,4,5])
puts find_max([1, 2, 3, 4, 5, -6, -7, -8, -9, -10])
puts find_max([5])
puts find_max([])