class AddUscoreToGame < ActiveRecord::Migration[5.2]
  def change
    add_reference :games, :user_score, foreign_key: true
  end
end
