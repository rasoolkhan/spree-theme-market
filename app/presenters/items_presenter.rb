class ItemsPresenter
  def items
    fake_item_1 = Item.new(name: "Spring theme", description: "Spring colors", image_preview: "http://placebear.com/300/200")
    fake_item_2 = Item.new(name: "Summer theme", description: "Spring colors", image_preview: "http://placebear.com/300/200")
    fake_item_3 = Item.new(name: "Winter theme", description: "Spring colors", image_preview: "http://placebear.com/300/200")
    fake_item_4 = Item.new(name: "Autumn theme", description: "Spring colors", image_preview: "http://placebear.com/300/200")
    fake_item_5 = Item.new(name: "Monday theme", description: "Spring colors", image_preview: "http://placebear.com/300/200")
    fake_item_6 = Item.new(name: "Tuesday theme", description: "Spring colors", image_preview: "http://placebear.com/300/200")
    fake_item_7 = Item.new(name: "Wednesday theme", description: "Spring colors", image_preview: "http://placebear.com/300/200")
    fake_item_8 = Item.new(name: "Thursday theme", description: "Spring colors", image_preview: "http://placebear.com/300/200")
    fake_item_9 = Item.new(name: "Friday theme", description: "Spring colors", image_preview: "http://placebear.com/300/200")
    @items = [fake_item_1, fake_item_2, fake_item_3, 
              fake_item_4, fake_item_5, fake_item_6,
              fake_item_7,fake_item_8,fake_item_9]  
  end
end
