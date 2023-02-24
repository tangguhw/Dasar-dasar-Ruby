# Write an algorithm to perform search on a sorted array of integers.

def search(array, target)
  # 1. Inisialisasi variable left dengan nilai 0
  left = 0
  # 2. Inisialisasi variable right dengan nilai jumlah elemen dalam array dikurangi 1
  right = array.length - 1

  # 3. Selama left kurang dari atau sama dengan right:
  #     a. Inisialisasi variable mid dengan nilai tengah antara left dan right
  #     b. Jika nilai array pada indeks mid sama dengan target, kembalikan nilai mid
  #     c. Jika nilai array pada indeks mid kurang dari target, ubah nilai left menjadi mid ditambah 1
  #     d. Jika nilai array pada indeks mid lebih besar dari target, ubah nilai right menjadi mid dikurangi 1
  while left <= right
    mid = (left + right) / 2
    
    if array[mid] == target
      return mid
    elsif array[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  # 4. Jika target tidak ditemukan, kembalikan nilai nil
  return nil
end

puts search([1, 2, 3, 4, 5], 3)
puts search([1, 2, 3, 4, 5, -6, -7, -8, -9, -10], 5)
puts search([5], 5)
puts search([], 5)
