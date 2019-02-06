class AddPublisherToGame < ActiveRecord::Migration[5.2]
  def change
    add_reference :games, :publisher, foreign_key: true
  end
end
