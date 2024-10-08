class SearchesController < ApplicationController
  before_action :set_property_units

  def index
    @property_units = Property.search(params[:search]).includes(:units).page(params[:page]).per(24)
  end
end
