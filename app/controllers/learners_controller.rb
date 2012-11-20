class LearnersController < ApplicationController
  load_and_authorize_resource :find_by => :id_hash
  
  def new
    # Ressource already loaded
  end
  
  def create
    @learner.update_attributes( params[:user] )
    if @learner.save
      flash[:success] = "Learners staged!"
      redirect_to current_user
    else
    render 'new'
    end   
  end
end
