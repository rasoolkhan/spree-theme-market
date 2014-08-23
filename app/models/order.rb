class Order < ActiveRecord::Base
  belongs_to :buyer
  has_many :items
  has_many :payments
end
