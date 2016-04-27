class CreateTeamTable < ActiveRecord::Migration
  def change
    create_table :team do |t|
      t.string :team_member_first_name
      t.string :team_member_last_name
      t.string :work_days
      t.string :work_hours
      t.string :position
      t.string :phone_number
      t.string :email
      t.string :facebook
      t.integer :restaurant_id
    end
  end
end
