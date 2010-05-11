class Greeter
  def say_hello(name)
    result = "Hi, " + name
    return result
  end
end

greeter = Greeter.new
puts greeter.say_hello("Matz")

