class AddUrLtoItems < ActiveRecord::Migration
  def up
    add_attachment :items, :url
  end
end
