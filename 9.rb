# Write an algorithm to find the greatest common divisor (GCD) of two given numbers.

def gcd(a, b)
  # 1. Inisialisasi variable m dengan nilai a
  m = a
  # 2. Inisialisasi variable n dengan nilai b
  n = b

  # 3. Selama n tidak sama dengan 0:
  #     a. Inisialisasi variable t dengan nilai n
  #     b. Set nilai n dengan nilai m modulo n
  #     c. Set nilai m dengan nilai t
  while n != 0
    t = n
    n = m % n
    m = t
  end
  
  # 4. Kembalikan nilai m sebagai hasil GCD
  return m
end

puts gcd(1, 0)
puts gcd(1, 1)
puts gcd(2, 4)
puts gcd(3, 6)
puts gcd(4, 8)
puts gcd(5, 10)