class AddAdminToUsers < ActiveRecord::Migration
  def up
    add_column :users, :admin, :boolean, :default => false
  end
end
