def heapify(array, n, i)
  # Знаходимо найбільший елемент у піраміді.
  largest = i
  l = 2 * i + 1
  r = 2 * i + 2

  if l < n && array[l] > array[largest]
    largest = l
  end

  if r < n && array[r] > array[largest]
    largest = r
  end

  # Якщо найбільший елемент не є вершиною піраміди,
  # то переміщуємо його на вершину.
  if largest != i
    array[i], array[largest] = array[largest], array[i]
    heapify(array, n, largest)
  end
end

def heapsort(array)
  # Будуємо піраміду з елементів масиву.
  for i in (array.length - 1).downto(0)
    heapify(array, array.length, i)
  end

  # Переміщуємо найбільший елемент піраміди на вершину.
  for i in (array.length - 1).downto(1)
    array[0], array[i] = array[i], array[0]
    heapify(array, i, 0)
  end

  return array
end

array = [9, 1, 5, 2, 7, 3, 6, 8, 4]
puts "Невідсортований масив: #{array}"

sorted_array = heapsort(array)
puts "Відсортований масив: #{sorted_array}"
