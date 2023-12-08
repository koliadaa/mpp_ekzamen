def outer_function
  x = 10

  # Створюємо закриття
  closure = lambda { x += 1 }

  # Використовуємо закриття
  closure.call

  # Виводимо значення змінної x
  puts x
end

outer_function
