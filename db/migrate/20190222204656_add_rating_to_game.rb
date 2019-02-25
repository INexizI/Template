class AddRatingToGame < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :rating, :integer, default: 0
  end
end
