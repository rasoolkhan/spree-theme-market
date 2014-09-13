class ItemPresenter
  attr_accessor :item
  delegate :name, :description, :price, :code, :image_preview, :id, to: :item
  
  def initialize(item)
    self.item = item
  end
  
  def created_date
    item.created_at.to_date
  end
  
  def updated_date
    item.updated_at.to_date
  end
end
