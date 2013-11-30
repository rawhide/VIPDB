class BoardsController < ApplicationController
  
  def index 
    @boards = Board.find(scrapind_id: params[:scraping_id])
  end
end
