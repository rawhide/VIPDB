class Admin::CommentsController < ApplicationController
  def index
    @board = Board.includes(:comments).find(params[:scraping_id])
    @comments = @board.comments
  end
end
