class EnrollmentsController < ApplicationController
  
  def show
    @enrollment = Enrollment.find_by_id_hash( params[:id] )
  end
  
  def edit
    @enrollment = Enrollment.find_by_id_hash( params[:id] )
  end
  
  def update
    @enrollment = Enrollment.find_by_id_hash( params[:id] )
    #render 'edit'
    if @enrollment.update_attributes( params[:enrollment] )
      flash[:success] = "cool"      
      redirect_to current_user
    else
      render 'edit'
    end

  end
  
  def index
  end
  
  def new
  end
  
  def create
  end
  
  def destroy
  end

end
