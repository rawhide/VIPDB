class CreateScrapings < ActiveRecord::Migration
  def change
    create_table :scrapings do |t|

      t.timestamps
      t.string :title
      t.string :url
    
    end
  end
end
