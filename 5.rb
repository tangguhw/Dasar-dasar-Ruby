# Write an algorithm to find the factorial of a given number.

def factorial(number)
  # 1. Inisialisasi variable result dengan nilai 1
  result = 1
  # 2. Loop dari 1 hingga bilangan yang diberikan:
  (1..number).each do |i|
    # a. Kalikan variable result dengan nilai loop saat ini
    result *= i
  end
  # 3. Kembalikan nilai variable result
  return result
end

puts factorial(5)
puts factorial(0)
puts factorial(1)
