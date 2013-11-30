class Board < ActiveRecord::Base
  
  belongs_to :scraping
  has_many :comments

  #
  # == 板のエレメントを引数にし
  #    DBにsaveします。
  #
  def self.factory( element )
    new do |board|

    end
  end

end
