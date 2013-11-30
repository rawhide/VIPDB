class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|

      t.timestamps
      t.string :name
      t.string :posted_at
      t.string :scraping_id
      t.string :sid
    
    end
  end
end
