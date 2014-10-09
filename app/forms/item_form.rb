class ItemForm < Reform::Form
  property :name
  property :description
  property :price
  property :code
  property :image_preview
  property :attachment

  validates :name, :description, :price, :code, presence: true
end
