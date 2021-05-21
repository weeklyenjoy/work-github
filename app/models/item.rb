class Item < ApplicationRecord

  belongs_to :genre
  has_many :customers, through: :carts
  has_many :carts
  has_many :orders, through: :order_items
  has_many :order_items
  attachment :image
  validates :genre_id,presence: true
  validates :name,presence: true
  validates :caption,presence: true
  validates :tax_out_price,presence: true
  validates :image,presence: true
  validates :is_active,presence: true

end
