class FocusAreasController < ApplicationController
  respond_to :html
  actions :index, :show

  navigation :focus_areas
end
