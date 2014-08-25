class Buyer < ActiveRecord::Base
  has_many :orders
  has_many :purchased_items
  has_many :payments
end
