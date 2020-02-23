def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

def hello_t( ["Tim", "Tom", "Jim"] ) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end