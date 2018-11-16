class AddGameIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :game, foreign_key: true
    add_reference :comments, :user, foreign_key: true
  end
end
