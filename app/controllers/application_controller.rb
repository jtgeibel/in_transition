class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'

  def permission_denied
    flash[:alert] = 'You are not authorized for this action.'
    redirect_to request.referrer
  end
end
