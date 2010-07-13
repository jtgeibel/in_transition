class ResourcesController < InheritedResources::Base
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
