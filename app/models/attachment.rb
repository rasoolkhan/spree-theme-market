class Attachment < ActiveRecord::Base
  belongs_to :item
  has_attached_file :attachment
  
  validates :item, presence: true
  validates_attachment_content_type :attachment, :content_type => %w(image/jpg image/jpeg image/png image/gif text/csv text/comma-separated-values application/csv text/plain)
end
