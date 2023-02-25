# Design an algorithm to find first repeated item in a array.

def find_first_repeated(array)
  # Iterasi melalui setiap elemen dalam array
  array.each_with_index do |elemen, indeks|
    # Iterasi melalui bagian sisa array setelah indeks saat ini
    # untuk memeriksa apakah ada elemen yang diulang
    if array[indeks+1..-1].include?(elemen)
      return elemen
    end
  end
  
  # Jika tidak ada elemen yang diulang, kembalikan nilai nil
  return nil
end


puts find_first_repeated([1, 2, 3, 4, 5, 1])
puts find_first_repeated([1, 2, 3, 4, 5, -1, -2, -3, -4, -5, -1])
puts find_first_repeated([1, 2, 3, 4, 5, 5, 1])
puts find_first_repeated([1, 2, 3, 4, 5])
puts find_first_repeated([5])
puts find_first_repeated([])
