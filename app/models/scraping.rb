require 'open-uri'
require 'nokogiri'

class Scraping < ActiveRecord::Base
  has_many :boards

  # スクレイピングを実行します
  def self.invoke
    all.each do |task|
      task.execute!
    end
  end

  # スクレイピング処理をここに実装
  def execute!
    # charset取得
    charset = URI.parse(self.url).read.charset
    # 一覧取得
    index = Nokogiri::HTML.parse(open(self.url).read, nil)

    index.css('a').each do |anchor|
      target_uri = %(#{absolute_url}/#{anchor[:href].sub('\/l50','')})
      board_elem = Nokogiri::HTML.parse(open(target_uri).read)

      board = Board.factory board_elem
      board.save!

      board_elem.css('//dl[@class="thread"]').each_with_index do |thread, i|
        res_headers = thread.css("dt")
        res_bodies = thread.css("dd")
 
        res_headers.each do |res_head|
          comment = Comment.factory board, res_headers[i], res_bodies[i]
          comment.save!
        end
      end
    end
  end

  # urlから絶対URLを取得します
  def absolute_url
    self.url.gsub(/news4vip\/subback.html/, "test/read.cgi/news4vip")
    #"http://hayabusa.2ch.net/test/read.cgi/news4vip"
  end
end
