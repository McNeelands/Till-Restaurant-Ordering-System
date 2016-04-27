class CreateCartTable < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.string :status, :default => "active"
    end
  end
end
