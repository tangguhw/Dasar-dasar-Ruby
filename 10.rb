# Design an algorithm to find first repeated item in a array.

def find_first_repeated(array)
  # 1. Inisialisasi variable seen_items sebagai hash table dengan nilai awal kosong
  seen_items = {}

  # 2. Loop setiap elemen pada array:
  #     a. Jika elemen saat ini belum terlihat sebelumnya, tambahkan elemen ini ke hash table seen_items dengan value true
  #     b. Jika elemen saat ini sudah terlihat sebelumnya, return elemen ini sebagai hasil
  array.each do |element|
    if seen_items[element]
      return element
    else
      seen_items[element] = true
    end
  end
  
  # 3. Jika tidak ada item yang diulang, return nilai nil
  return nil
end

puts find_first_repeated([1, 2, 3, 4, 5, 1])
puts find_first_repeated([1, 2, 3, 4, 5, -1, -2, -3, -4, -5, -1])
puts find_first_repeated([1, 2, 3, 4, 5, 5, 1])
puts find_first_repeated([1, 2, 3, 4, 5])
puts find_first_repeated([5])
puts find_first_repeated([])
