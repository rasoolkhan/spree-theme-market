class ItemPresenter
  attr_accessor :item
  delegate :name, :description, :price, :code, :image_preview, :id, to: :item
  
  def initialize(item)
    self.item = item
  end
  
  def created_on
    item.created_at.to_date
  end
  
  def updated_on
    item.updated_at.to_date
  end
end
