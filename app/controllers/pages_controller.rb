class PagesController < ApplicationController
  layout "classrooms"

  def show
    @classroom = Classroom.find_by_id_hash( params[:classroom_id] )
    @sections = @classroom.pages
    
    @page = Page.find( params[:id] )
    
  end

end
