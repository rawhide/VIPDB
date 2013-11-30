class Board < ActiveRecord::Base
  
  belongs_to :scraping
  has_many :comments

end
