class WelcomeController < ApplicationController

  def index
    # require "pry"; binding.pry
    @merchant = RailsEngineFacade.search_for(params[:search])
    @search_field = params[:search]
  end

end
