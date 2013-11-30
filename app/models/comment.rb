class Comment < ActiveRecord::Base
  belongs_to :board

  def self.factory( board, header_element, body_element)
    header = header_element.text.split("：")
    tmp = header[2].split(" ")

    new do |comment|
      comment.board_id = board.id
      comment.voice_body = body_element.text
      comment.voice_name = header[1]
      comment.voice_number = header[0].strip
      comment.voice_id = tmp[2].gsub(/ID:/, "")
      comment.posted_at = tmp[0].gsub(/\(.\)/, "")
    end
  end
end
