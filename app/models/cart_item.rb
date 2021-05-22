class CartItem < ApplicationRecord

  belongs_to :item
  belongs_to :customer

  def sum_of_price
    item.tax_out_price * volume*1.1
  end

  validates :customer_id, presence: true
  validates :item_id, presence: true
  validates :volume, presence: true
end
