class CreateScores < ActiveRecord::Migration[5.2]
  def change
    create_table :scores do |t|
      t.references :scorable, polymorphic: true
      t.references :user, foreign_key: true
      t.float :score

      t.timestamps
    end
  end
end
