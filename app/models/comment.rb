class Comment < ActiveRecord::Base
  belongs_to :board

  def self.factory( board, header_element, body_element)
    new do |comment|
      comment.board_id = board.id
      #TODO エレメントの処理
    end
  end
end
