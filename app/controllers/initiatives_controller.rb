class InitiativesController < InheritedResources::Base
  respond_to :html, :xml, :json
  filter_resource_access

  navigation :initiatives
end
