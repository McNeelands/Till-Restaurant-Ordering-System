class AddUrLtoRestaurant < ActiveRecord::Migration
  def up
    add_column :restaurants, :restaurant_url, :string
  end
end
