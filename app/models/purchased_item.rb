class PurchasedItem < ActiveRecord::Base
  belongs_to :buyer
  belongs_to :payment
  belongs_to :id
end
