module Admin
  class ItemsController < AdminController
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
      if @item.save
        flash[:notice] = 'Successfully saved theme'
        redirect_to admin_item_url(@item)
      else
        flash[:notice] = 'Theme not saved, please update details'
        redirect_to new_admin_item_path
      end
    end
    
    def update
      @item = Item.find(params[:id])
      
      if @item.update(item_params)
        redirect_to admin_item_url(@item)
        flash[:notice] = "Successfully updated"
      else
        render 'edit'
        flash[:notice] = "Updates not saved"
      end
    end
    
    def edit
      @item = Item.find(params[:id])
    end
    
    def destroy
      @item = Item.find(params[:id])
      @item.destroy
      redirect_to admin_items_url
    end
    
    private
    
    def item_params
      params.require(:item).permit(:name, :description, :price, :code, :image_preview)
    end
  end
end