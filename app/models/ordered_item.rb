class OrderedItem < ApplicationRecord
  belongs_to :item

  enum making status:[製作不可: 0,製作待ち: 1,製作中: 2,製作完了: 3]

  validates :order_id , presence: true
  validates :item_id , presence: true
  validates :volume , presence: true
end
