# Design an algorithm to compute the nth Fibonacci number.

def fibonacci(n)
  # 1. Inisialisasi variable a dengan nilai 0
  a = 0
  # 2. Inisialisasi variable b dengan nilai 1
  b = 1

  # 3. Jika n sama dengan 0, kembalikan nilai a
  if n == 0
    return a
  # 4. Jika n sama dengan 1, kembalikan nilai b
  elsif n == 1
    return b
  # 5. Loop dari 2 hingga n:
  #     a. Inisialisasi variable c dengan nilai a ditambah b
  #     b. Set nilai a menjadi nilai b
  #     c. Set nilai b menjadi nilai c
  else
    (2..n).each do |i|
      c = a + b
      a = b
      b = c
    end
    # 6. Kembalikan nilai b
    return b
  end
end

puts fibonacci(0)
puts fibonacci(1)
puts fibonacci(2)
puts fibonacci(3)
puts fibonacci(4)
puts fibonacci(5)
puts fibonacci(6)
puts fibonacci(7)
puts fibonacci(8)