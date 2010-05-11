require 'rubygems'
require 'nokogiri'
require 'open-uri'

symbol = "AAPL"
doc = Nokogiri::XML(open("http://finance.yahoo.com/q?s=#{symbol}"))

puts "#{symbol} =>  #{doc.css("th:contains('Last Trade:')").first.next_sibling.inner_text}"