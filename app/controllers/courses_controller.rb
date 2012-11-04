class CoursesController < ApplicationController
  #load_and_authorize_resource :find_by => :id_hash # will use find_by_permalink!(params[:id])
  
  respond_to :html, :xml, :json

  def index
    
    respond_with( @courses = Course.all )
  
  end
  
  def create
  end
  
  def new
  end
  
  def edit
  end

  def show
    
    respond_with( @course = Course.find_by_id_hash( params[:id] ) )
    
  end
  
  def update
  end
  
  def destroy
  end
  
end
