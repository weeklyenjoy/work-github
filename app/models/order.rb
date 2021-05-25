class Order < ApplicationRecord

  belongs_to :customer
  has_many :items, through: :orderd_items
  has_many :orderd_items
  enum payment_method: { クレジットカード: 0 ,銀行振込: 1 }
  # enum status:{入金待ち: 0 ,入金確認: 1,製作中: 2,発送準備中: 3,発送済み: 4}
  enum status: {wait: 0,deposit: 1,production: 2,preparation: 3,sending: 4}
  validates :order_id, presence: true
  validates :item_id, presence: true
  validates :volume, presence: true
  
end
