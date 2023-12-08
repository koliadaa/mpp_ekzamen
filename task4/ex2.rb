def print_numbers
  1.upto(10) do |n|
    puts n
  end
end

thread1 = Thread.new(print_numbers)
thread2 = Thread.new(print_numbers)
