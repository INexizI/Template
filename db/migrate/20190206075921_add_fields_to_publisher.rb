class AddFieldsToPublisher < ActiveRecord::Migration[5.2]
  def change
    add_column :publishers, :logotype, :string
    add_column :publishers, :name, :string
    add_column :publishers, :description, :text
  end
end
