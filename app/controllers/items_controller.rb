class ItemsController < ApplicationController
  def index
    fake_item_1 = Item.new(name: "Spring theme", description: "Spring colors")
    fake_item_2 = Item.new(name: "Summer theme", description: "Spring colors")
    fake_item_3 = Item.new(name: "Winter theme", description: "Spring colors")
    @items = [fake_item_1, fake_item_2, fake_item_3]
  end
end