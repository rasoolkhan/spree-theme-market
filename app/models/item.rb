class Item < ActiveRecord::Base
  belongs_to :author
  belongs_to :order
  has_many :attachments
end
