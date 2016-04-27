class Order < ActiveRecord::Base
  belongs_to :item
  belongs_to :user
  belongs_to :cart

end
