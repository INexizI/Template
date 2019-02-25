class AddCheckToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :option, :boolean, default: false
  end
end
