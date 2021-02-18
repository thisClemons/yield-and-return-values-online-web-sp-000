require 'pry'

def hello(array)
  i = 0
  while i < array.length
    puts array[i]
    binding.pry
    yield(array[i])
    i += 1
  end
end

#binding.pry
greetings = []
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}"}
