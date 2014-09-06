module Admin
  class ItemsController < ApplicationController
    def index
      @items = Item.all
    end
    
    def show
      @item = Item.find(params[:id])
    end
    
    def new
      @item = Item.new
    end
    
    def create
      @item = Item.new(item_params)
      @item.save
      redirect_to admin_item_path(@item)
    end
    
    def update
      @item = Item.find(params[:id])
      
      if @item.update(item_params)
        redirect_to admin_item_path(@item)
      else
        render 'edit'
      end
    end
    
    def edit
      @item = Item.find(params[:id])
    end
    end
  end
end