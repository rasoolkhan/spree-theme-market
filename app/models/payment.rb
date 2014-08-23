class Payment < ActiveRecord::Base
  has_many :purchased_items
end
