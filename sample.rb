require 'open-uri'
require 'nokogiri'
 
board = open("http://hayabusa.2ch.net/test/read.cgi/news4vip/1385794291").read
doc = Nokogiri::HTML.parse(board)
doc.css('//dl[@class="thread"]').each do |thread|
  thread.css("dt").each do |res|
    p res.text.split("：")
  end
end
