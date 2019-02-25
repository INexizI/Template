class AddParentToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :parent, default: nil
  end
end
