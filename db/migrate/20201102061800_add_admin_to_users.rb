class AddAdminToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :default, :string
    add_column :users, :false, :string
    add_column :users, :null, :false
  end
end
