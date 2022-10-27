class ItemsController < ApplicationController

  def index
    @items = RailsEngineFacade.items
  end

  def show
    @item = RailsEngineFacade.this_item(params[:id])
  end

end
