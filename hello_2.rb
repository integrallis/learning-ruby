def greet
  puts "Hello!"
end

self.class.send(:greet)