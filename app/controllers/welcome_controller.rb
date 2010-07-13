class WelcomeController < ApplicationController # Not using InheritedResources::Base because there isn't a database model for this controller.
  layout 'no_sidebar'
end
