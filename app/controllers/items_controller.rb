class ItemsController < ApplicationController
  def index
    @presenter = ItemsPresenter.new
  end
end