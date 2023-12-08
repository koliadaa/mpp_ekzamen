def outer_function

  # Створюємо закриття
  closure = lambda { |x| x * 2 }

  # Повертаємо закриття
  return closure
end

# Отримуємо закриття із зовнішньої функції
closure = outer_function

# Використовуємо закриття
puts closure.call(5)

