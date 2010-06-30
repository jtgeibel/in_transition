class FocusAreasController < ApplicationController
  respond_to :html

  def index
    respond_with(@focus_areas = FocusArea.all)
  end

  def show
    respond_with(@focus_area = FocusArea.find(params[:id]))
  end
end
