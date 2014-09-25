class Item < ActiveRecord::Base
  belongs_to :author
  belongs_to :order
  has_many :attachments

  attr_accessor :attachment
  
  def save
    super && self.attachments.create!(attachment: self.attachment)
  end
end
