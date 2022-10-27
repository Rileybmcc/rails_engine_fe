class MerchantsController < ApplicationController

  def index
    @merchants = RailsEngineFacade.every_merchant
  end

  def show
    @merchant = RailsEngineFacade.this_merchant(params[:id])
    @items = RailsEngineFacade.merchant_items(params[:id])
  end



end
