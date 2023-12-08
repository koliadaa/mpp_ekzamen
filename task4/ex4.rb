mutex = Mutex.new

def increment_counter
  mutex.lock
  counter += 1
  mutex.unlock
end

counter = 0

thread1 = Thread.new { increment_counter }
thread2 = Thread.new { increment_counter }

thread1.join
thread2.join

puts counter
