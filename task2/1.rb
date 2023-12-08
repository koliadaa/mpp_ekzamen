def outer_function
  x = 10

  # Створюємо закриття
  closure = lambda { x + 1 }

  # Використовуємо закриття
  puts closure.call
end

outer_function
