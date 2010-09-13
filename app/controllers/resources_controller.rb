class ResourcesController < InheritedResources::Base
  def index
    @resources = Resource.includes(:focus_area)
    respond_with(@resources)
  end

  def create
    @resource = Resource.create(params[:resource])
    respond_with(@resource, :location => resources_url)
  end

  def update
    @resource = Resource.find(params[:id])
    @resource.update_attributes(params[:resource])
    respond_with(@resource, :location => resources_url)
  end
end
