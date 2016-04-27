class Restaurant < ActiveRecord::Base
  belongs_to :user
  has_many :menus


end
