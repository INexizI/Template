class CreateUserRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :user_ratings do |t|
      t.references :user, index: true
      t.references :game, index: true
      t.integer :rating, default: nil
      t.timestamps
    end
  end
end
