class Board < ActiveRecord::Base
  
  belongs_to :scraping
  has_many :comments

  #
  # == 板のエレメントを引数にし
  #    DBにsaveします。
  #
  def self.factory( sid, scraping_id, element )
    new do |board|
      board.scraping_id = scraping_id
      board.sid = sid
      board.name = element.css("h1").text
    end
  end
end
