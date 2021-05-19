class Item < ApplicationRecord
  belongs_to :genre
  has_many :customers, through: :carts
  has_many :carts
  has_many :orders, through: :order_items
  has_many :oder_items
  attachment :image
end
