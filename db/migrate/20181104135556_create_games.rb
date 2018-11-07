class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.text :description
      t.string :poster
      t.date :release
      t.text :genre
      t.string :studio

      t.timestamps
    end
  end
end
