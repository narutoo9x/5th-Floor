class Order < ApplicationRecord
  has_many :order_items
  
  validates :name, presence: true
  validates :address, presence: true

end
