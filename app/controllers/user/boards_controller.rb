class User::BoardsController < ApplicationController
  def index
    @boards = Board.includes(:comments).all
  end
end
