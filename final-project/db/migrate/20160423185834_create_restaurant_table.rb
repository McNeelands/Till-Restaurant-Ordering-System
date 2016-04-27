class CreateRestaurantTable < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :location
      t.integer :user_id
    end
  end
end
