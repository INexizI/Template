class AddStudioToGame < ActiveRecord::Migration[5.2]
  def change
    add_reference :games, :studio, foreign_key: true
  end
end
