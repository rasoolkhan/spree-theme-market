module Admin
  class ItemsController < ApplicationController
    def index
      @items = Item.all
    end
    end
  end
end