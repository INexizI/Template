class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :title
      t.string :post_pic
      t.text :news

      t.timestamps
    end
  end
end
