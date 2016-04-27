class UpdateOrderTable < ActiveRecord::Migration
  def up
    add_column :orders, :cart_id, :integer
  end
end
