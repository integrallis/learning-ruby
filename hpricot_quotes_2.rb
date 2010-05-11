require 'rubygems'
require 'hpricot'
require 'open-uri'

symbol = "AAPL"
doc = Hpricot(open("http://finance.yahoo.com/q?s=#{symbol}"))
quote = doc.search("td:contains('Last Trade:')").first.following_siblings.first.inner_text

puts "#{symbol} => #{quote}"