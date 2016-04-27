class AddmenuIdtoitems < ActiveRecord::Migration
  def up
    add_column :items, :menu_id, :integer
  end
end
