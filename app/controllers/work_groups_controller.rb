class WorkGroupsController < InheritedResources::Base
  filter_resource_access
  navigation :work_groups
end
