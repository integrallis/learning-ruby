def greet
  puts "Hello!"
end

# puts "self.class => #{self.class}"
# puts "self => #{self}"
# m = self.method(:greet)
# m.call
# puts "++++++++++++++++++++++++++"
# self.class.private_methods.each do |m| 
#   puts "#{m}"
# end
# puts "++++++++++++++++++++++++++"

self.class.send(:greet)