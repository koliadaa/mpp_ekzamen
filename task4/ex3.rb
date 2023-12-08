counter = 0

def increment_counter
  synchronize do
    counter += 1
  end
end

thread1 = Thread.new { increment_counter }
thread2 = Thread.new { increment_counter }

thread1.join
thread2.join

puts counter

