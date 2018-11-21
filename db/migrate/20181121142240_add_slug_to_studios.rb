class AddSlugToStudios < ActiveRecord::Migration[5.2]
  def change
    add_column :studios, :slug, :string
    add_index :studios, :slug, unique: true
  end
end
