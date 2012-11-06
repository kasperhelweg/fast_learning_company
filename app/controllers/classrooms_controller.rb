class ClassroomsController < ApplicationController
  layout "classrooms"

  respond_to :html, :xml, :json

  def index
  end
  
  def create
  end
  
  def new
  end
  
  def edit
  end

  def show
    @classroom = Classroom.find_by_id_hash( params[:classroom_id] )
    @sections = @classroom.pages
    @page = Page.find( params[:id] )
  end
  
  def update
  end
  
  def destroy
  end

end
