class ShippingAddress < ApplicationRecord

  belongs_to :customer
  validates :customer_id,presence: true
  validates :name,presence: true
  validates :postal_code,presence: true
  validates :address,presence: true
end
