require 'rubygems'
require 'hpricot'
require 'open-uri'

symbol = "AAPL"
doc = Hpricot(open("http://finance.yahoo.com/q?s=#{symbol}"))

(doc/"td").each do |td|
  inner_text = td.inner_text
  if inner_text == "Last Trade:" 
     next_td = td.following_siblings.first
     puts "#{symbol} => #{next_td.inner_text}"
  end
end
