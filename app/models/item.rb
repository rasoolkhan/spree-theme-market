class Item < ActiveRecord::Base
  belongs_to :author
  belongs_to :order
  has_many :attachments
  
  has_attached_file :attachment
  validates_attachment_content_type :attachment, :content_type => %w(image/jpg image/jpeg image/png image/gif text/csv text/comma-separated-values application/csv text/plain)
end
