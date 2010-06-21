class InitiativesController < ApplicationController
  respond_to :html, :xml, :json
  filter_resource_access

  def index
    @initiatives = Initiative.all
    respond_with @initiatives
  end

  def create
    flash[:notice] = 'Initiative was successfully created.' if @initiative.save
    respond_with(@initiative)
  end

  def update
    flash[:notice] = 'Initiative was successfully updated.' if @initiative.update_attributes(params[:initiative])
    respond_with(@initiative)
  end

  def destroy
    @initiative.destroy

    respond_to do |format|
      format.html { redirect_to(initiatives_url) }
      format.xml  { head :ok }
    end
  end

end
