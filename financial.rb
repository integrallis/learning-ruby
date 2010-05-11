module Financial
  puts "Financial Module loading..."
  
  def self.calculate_payment(principal, interest, years) 
  	ip = (interest / 100) / 12
  	n = years * 12
  	(-principal + (-principal / ((1 + ip) ** n) - 1)) * -ip    	
  end
  
  puts "Done loading Financial Module!"
end
