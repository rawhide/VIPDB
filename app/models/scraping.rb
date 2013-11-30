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
    # 一覧取得

    index = Nokogiri::HTML.parse(open(self.uri).read).each
    raise index.css('a').inspect
    index.css('a').each do |anchor|
      board = Nokogiri::HTML.parse(open( %(#{absolute_url}#{anchor[:href]}) ).read)
      raise board.inspect
    end
  end

  # urlから絶対URLを取得します
  def absolute_url
  end
end
