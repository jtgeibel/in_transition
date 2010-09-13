class InitiativesController < InheritedResources::Base
  respond_to :html, :xml, :json
  filter_resource_access

  navigation :initiatives
  
  def index
    @initiatives = Initiative.includes(:work_groups)
    respond_with(@initiatives)
  end
end
