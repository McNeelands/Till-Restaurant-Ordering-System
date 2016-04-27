class Addcolumnstomenu < ActiveRecord::Migration
  def up
    add_column :menus, :menu_name, :string
  end
end
