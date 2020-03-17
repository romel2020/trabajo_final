class LocationsController < ApplicationController
  def index
    @locations = Location.find(params[:id]).all_children
  end
end
