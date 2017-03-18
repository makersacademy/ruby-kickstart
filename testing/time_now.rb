array = (1..500000).to_a
start_time = Time.now
5000000.times { array[39000] }
puts (Time.now - start_time)


start_time = Time.now
5000000.times { array[0] }
puts (Time.now - start_time)
