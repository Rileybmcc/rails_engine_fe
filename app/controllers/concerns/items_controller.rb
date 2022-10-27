class ItemsController < ApplicationController

  def index
    @items = RailsEngineFacade.all_items
  end

  def show
    @item = RailsEngineFacade.this_item(params[:id])
  end

end
