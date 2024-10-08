class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  skip_forgery_protection

  private
   
  def property_units
    @property_units = Property.includes(:units).page(params[:page]).per(24)
  end

end
