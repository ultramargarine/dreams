class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.string :author
      t.text :content
      t.string :photo_url
      t.integer :rating
      t.string :tags

      t.timestamps
    end
  end
end
