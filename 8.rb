# Design an algorithm to count the number of occurrences of a given item in a array.

def count_occurrences(array, item)
  # 1. Inisialisasi variable count dengan nilai 0
  count = 0

  # 2. Loop setiap elemen pada array:
  #     a. Jika elemen saat ini sama dengan item, tambahkan 1 ke variable count
  array.each do |element|
    count += 1 if element == item
  end
  
  # 3. Kembalikan nilai variable count
  count
end

puts count_occurrences([1, 2, 3, 4, 5, 1], 1)
puts count_occurrences([1, 2, 3, 4, 5], 6)
puts count_occurrences([5], 5)
puts count_occurrences([], 5)

