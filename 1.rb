# Write an algorithm to determine if a given number is prime.

def is_prime?(number)
  # Jika bilangan kurang dari 2, maka bilangan tersebut bukan prima
  if number < 2
    # puts number,"Bukan Bilangan Prima"
    return false
  # Jika bilangan sama dengan 2, maka bilangan tersebut prima
  elsif number == 2
    # puts number,"Bilangan Prima"
    return true
  # Jika bilangan genap selain 2, maka bilangan tersebut bukan prima
  elsif number % 2 == 0
    # puts number,"Bukan Bilangan Prima"
    return false
  # Jika bilangan ganjil lebih besar dari 2, maka dilakukan pengecekan
  else
    # Pengecekan dimulai dari 3 hingga akar kuadrat dari bilangan tersebut, dengan increment 2 karena bilangan genap sudah di-exclude sebelumnya
    (3..Math.sqrt(number)).step(2) do |i|
      # Jika bilangan habis dibagi i, maka bilangan tersebut bukan prima
      if number % i == 0
        # puts number,"Bukan Bilangan Prima"
        return false
      end
    end
    # Jika tidak ada bilangan lain selain 1 dan bilangan itu sendiri yang dapat membagi bilangan tersebut, maka bilangan tersebut prima
    return true
  end
  
end

puts is_prime?(1)
puts is_prime?(-2)
puts is_prime?(2)
puts is_prime?(3)
puts is_prime?(4)
puts is_prime?(20)
puts is_prime?(17)
