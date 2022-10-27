class WelcomeController < ApplicationController

  def index
    if params[:search] && params[:search] != ""
      @merchant = RailsEngineFacade.search_for(params[:search])
      @search_field = params[:search]
    else
      return
    end
  end

end
