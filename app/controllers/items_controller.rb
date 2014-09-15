class ItemsController < ApplicationController
  def index
    @item_presenters = Item.all.map { |item| ItemPresenter.new(item) }
  end
end