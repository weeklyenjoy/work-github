class OrderedItem < ApplicationRecord
  belongs_to :item
<<<<<<< HEAD
  belongs_to :oder

  enum making_status:[製作不可: 0,製作待ち: 1,製作中: 2,製作完了: 3]
=======
  belongs_to :order
  enum making_status:[着手不可: 0,製作待ち: 1,製作中: 2,製作完了: 3]
>>>>>>> 3d2894a899793c6e9489227cad5eb5d8dc3b72e8

  validates :order_id , presence: true
  validates :item_id , presence: true
  validates :volume , presence: true
end
