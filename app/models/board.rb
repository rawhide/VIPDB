class Board < ActiveRecord::Base
  
  belongs_to :scraping
  has_many :comments

  #
  # == 板のエレメントを引数にし
  #    DBにsaveします。
  #
  def self.factory( sid, element )
    new do |board|
      board.sid = sid
    end
  end

end
