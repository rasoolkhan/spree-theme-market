class ItemsController < ApplicationController
  def index
    items = Item.all
    @presenter = ItemsPresenter.new(items)
  end
end