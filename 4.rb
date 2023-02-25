# # Design an algorithm to check if a given string is a palindrome.

def is_palindrome?(string)
# 1. Inisialisasi variable start dengan nilai 0
  start = 0
# 2. Inisialisasi variable end dengan nilai panjang string dikurangi 1
  end_index = string.length - 1
  
# 3. Loop selama start lebih kecil dari end:
#     a. Jika karakter di indeks start tidak sama dengan karakter di indeks end, return false
#     b. Tambahkan 1 pada start dan kurangi 1 pada end
  str = string.downcase
  while start < end_index
    if str[start] != str[end_index]
      return false
    end
    start += 1
    end_index -= 1
  end
  
#   # 4. Jika string merupakan palindrome, return true
  return true
end

puts is_palindrome?("racecar")
puts is_palindrome?("racecar racecar")
puts is_palindrome?("Racecar")
puts is_palindrome?("irfan")