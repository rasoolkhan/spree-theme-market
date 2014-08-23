class Order < ActiveRecord::Base
  belongs_to: buyer
  has_many: items
end
