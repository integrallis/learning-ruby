require 'rubygems'
require 'nokogiri'
require 'open-uri'

symbol = "AAPL"
doc = Nokogiri::XML(open("http://finance.yahoo.com/q?s=#{symbol}"))

doc.css("th").each do |td|
  inner_text = td.inner_text
  if inner_text == "Last Trade:" 
     next_td = td.next_sibling
     puts "#{symbol} => #{next_td.inner_text}"
  end
end