class CartItem < ApplicationRecord

  belongs_to :items
  belongs_to :customer
  validates :customer_id, presence: true
  validates :item_id, presence: true
  validates :volume, presence: true
end
