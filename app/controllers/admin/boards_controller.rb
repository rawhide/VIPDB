class BoardsController < ApplicationController
  
  def index 
    Board.find(scrapind_id: params[:scraping_id])
  end

end
