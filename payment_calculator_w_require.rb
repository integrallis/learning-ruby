require 'financial'

puts "Welcome to the payment calculator..."
puts "Enter the principal:"
principal = gets.to_f
puts "Enter the interest:"
interest = gets.to_f
puts "Enter the terms in years:"
years = gets.to_i
payment = Financial.calculate_payment(principal, interest, years)
puts "For a principal of $#{principal} with an interest of #{interest}% for #{years} years they payments will be #{payment}"