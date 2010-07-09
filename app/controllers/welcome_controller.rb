class WelcomeController < ApplicationController
  layout 'no_sidebar'

  def index # Don't want to use the the action from inherited_resource
  end
end
