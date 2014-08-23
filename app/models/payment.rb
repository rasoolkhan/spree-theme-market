class Payment < ActiveRecord::Base
  belongs_to :buyer
  belongs_to :order
  has_many :purchased_items
end
