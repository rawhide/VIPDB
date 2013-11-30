class Admin::BoardsController < ApplicationController
  
  def index 
    @boards = Board.where(scraping_id: params[:scraping_id])
  end
end
