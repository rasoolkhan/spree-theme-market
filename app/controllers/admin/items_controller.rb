module Admin
  class ItemsController < ApplicationController
    def index
      @items = Item.all
    end
    
    def new
      @item = Item.new
    end
    
    def create
      @item = Item.new(item_params)
      @item.save
      redirect_to admin_item_path(@item)
    end
    end
  end
end