class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :mat, :string
  end
end
