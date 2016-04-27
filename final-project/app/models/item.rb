class Item < ActiveRecord::Base
  has_attached_file :url, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :url, content_type: /\Aimage\/.*\Z/
  belongs_to :menu
  has_one :order, dependent: :destroy


# menus are owned by admin users
# orders associate items with non-admin users (this table just has item_id and user_id)
# on the non-admin user menus page, when adding an item create an order record
# in the admin panel, retrieve menus for this admin, retrieve items for those menus, retrieve orders for those items
# ^ do this every 10 seconds with ajax (see setInterval)

end
