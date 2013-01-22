class ApplicationController < ActionController::Base
  protect_from_forgery

  # Change CanCan's current_user
  # to current_admin because we
  # are using admin in Devise
  def current_ability
    @current_ability ||= Ability.new(current_admin)
  end

  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = "Access denied."
    redirect_to root_url
  end

end
