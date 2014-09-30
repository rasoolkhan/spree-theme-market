module Admin
  class ItemsController < AdminController
    def index
      @item_presenters = Item.all.map { |item| ::ItemPresenter.new(item) }
    end
    
    def show
      item = Item.find(params[:id])
      @item_presenter = ::ItemPresenter.new(item)
    end
    
    def new
      @item_creation_form = ItemForm.new(Item.new)
    end
    
    def create
      @item_creation_form = ItemForm.new(Item.new)
      
      if @item_creation_form.validate(item_params) && save_item
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
    
    
    def save_item
      @item_creation_form.save do |hash|
        @item = Item.new(hash)
        @item.save
      end
    end
    
    def item_params
      params.require(:item).permit(:name, :description, :price, :code, :image_preview, :attachment)
    end
  end
end