class InitiativesController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @initiatives = Initiative.all
    respond_with @initiatives
  end

  def show
    @initiative = Initiative.find(params[:id])
    respond_with @initiative
  end

  def new
    @initiative = Initiative.new
    respond_with @initiative
  end

  def edit
    @initiative = Initiative.find(params[:id])
  end

  def create
    @initiative = Initiative.new(params[:initiative])
    flash[:notice] = 'Initiative was successfully created.' if @initiative.save
    respond_with(@initiative)
  end

  def update
    @initiative = Initiative.find(params[:id])
    flash[:notice] = 'Initiative was successfully updated.' if @initiative.update_attributes(params[:initiative])
    respond_with(@initiative)
  end

  def destroy
    @initiative = Initiative.find(params[:id])
    @initiative.destroy

    respond_to do |format|
      format.html { redirect_to(initiatives_url) }
      format.xml  { head :ok }
    end
  end
end
