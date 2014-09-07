module Admin
  class ItemsController < AdminController
    def index
      items = Item.all
      @presenter = ItemsPresenter.new(items)
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
    
    def destroy
      @item = Item.find(params[:id])
      @item.destroy
      redirect_to admin_items_path
    end
    
    private
    
    def item_params
      params.require(:item).permit(:name, :description, :price, :code, :image_preview)
    end
  end
end