class User < ActiveRecord::Base
  has_secure_password
  has_many :orders
  has_many :carts
  has_one :restaurant

  def open_cart(order = nil)
    cart = Cart.find_or_create_by(user: self, status: "active")

    if order
      cart.orders << order
      cart.save
    end

    cart
  end
end
