class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.timestamps
      t.string :board_id
      t.string :voice_body
      t.string :voice_name
      t.string :voice_number
      t.string :voice_id
      t.string :posted_at

    end
  end
end
