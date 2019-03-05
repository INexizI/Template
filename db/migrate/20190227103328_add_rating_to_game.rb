class AddRatingToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :rating, :float
  end
end
