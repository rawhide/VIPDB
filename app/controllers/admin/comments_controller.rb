class CommentsController < ApplicationController
  def index
    @board = Board.includes(:comments).find(scraping_id: params[:scraping_id])
    @comments = @board.comments
  end
end
