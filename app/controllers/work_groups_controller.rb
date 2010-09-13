class WorkGroupsController < InheritedResources::Base
  filter_resource_access
  navigation :work_groups
  
  def index
    @work_groups = WorkGroup.includes(:initiative).includes(:focus_area)
    respond_with(@workgroups)
  end
end