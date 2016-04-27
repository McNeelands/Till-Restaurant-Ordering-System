class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :orders
  has_many :items, through: :orders

  # def subtotal
  #   items.reduce(0) do |total, item|
  #     total + item.price
  #   end
  # end

  def subtotal
    total = 0
    items.each do |item|
      total += item.price
    end
    total
  end

  def hst
    (subtotal * 0.13).round(2)
  end

  def total
    (hst + subtotal).round(2)
  end

  def total_in_cents
   total * 100
  end

end
