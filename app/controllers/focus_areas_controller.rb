class FocusAreasController < InheritedResources::Base
  respond_to :html
  actions :index, :show

  navigation :focus_areas

  def show
    @focus_area = FocusArea.includes({:work_groups => [:initiative]}, :resources).find(params[:id])
    respond_with(@focus_area)
  end
end
