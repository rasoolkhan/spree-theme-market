class ItemForm < Reform::Form
  property :name
  property :description
  property :price
  property :code
  property :image_preview
  property :attachment

  validates :name, :description, :price, :code, presence: true
end

# class ItemCreationForm
  
#   attr_accessor :name, :description, :price, :code, :image_preview, :attachment
#   attr_reader :item
  
#   delegate :valid?, to: :item
  
#   def initialize(params = {})
#     @name = params[:name]
#     @description = params[:description]
#     @price = params[:price]
#     @code = params[:code]
#     @image_preview = params[:image_preview]
#     @attachment = params[:attachment]
    
#     @item = Item.new(item_attributes)
#   end
  
#   def save
#     create_item && create_attachment
#   end
  
#   def self.model_name
#     ItemCreationForm
#   end
  
#   def self.param_key
#     :id
#   end
  
#   private
  
#   def create_item
#     item.save
#   end
  
#   def create_attachment
#     item.attachments.create(attachment_attributes)
#   end
  
#   def item_attributes
#     {
#       :name => name,
#       :description => description,
#       :price => price,
#       :code => code,
#       :image_preview => image_preview,
#     }
#   end
#   def self.
  
#   def attachment_attributes
#     { :attachment => attachment }
#   end
  

# end