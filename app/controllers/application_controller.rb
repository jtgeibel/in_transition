class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  require 'inherited_resources'
  inherit_resources

  def permission_denied
    flash[:alert] = 'You are not authorized for this action.'
    redirect_to request.referrer
  end
end