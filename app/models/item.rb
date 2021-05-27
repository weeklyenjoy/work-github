class Item < ApplicationRecord


  belongs_to :genre
  has_many :customers, through: :cart_items
  has_many :cart_items
  has_many :orders, through: :ordered_items
  has_many :ordered_items
  attachment :image


  validates :genre_id, presence: true
  validates :name, presence: true
  validates :caption, presence: true
  validates :tax_out_price, presence: true
  validates :image, presence: true
  validates :is_active, inclusion: { in: [true, false] }

end
