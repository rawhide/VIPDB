require 'open-uri'
require 'nokogiri'
 
board = open("http://hayabusa.2ch.net/test/read.cgi/news4vip/1385794291").read
doc = Nokogiri::HTML.parse(board)


doc.css('//dl[@class="thread"]').each_with_index do |thread, i|
  res_headers = thread.css("dt")
  res_bodies = thread.css("dd")

  [].tap do |result|
    res_headers.each do |res_head|
      result.push({ title: res_headers[i], body: res_bodies[i] })
    end
    p result
  end
  
end
