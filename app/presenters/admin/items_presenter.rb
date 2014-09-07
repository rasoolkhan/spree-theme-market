module Admin
  class ItemsPresenter
    def initialize(items)
      @items = items
    end
    
    def items
      items = Item.all 
    end
  end
end
