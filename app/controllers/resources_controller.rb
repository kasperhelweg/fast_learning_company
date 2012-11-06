class ResourcesController < ApplicationController

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(params[:resource])
    if @resource.save
      flash[:notice] = "Successfully created Asset."
      redirect_to root_path
    else
      render :action => 'new'
    end
    
  end

end
