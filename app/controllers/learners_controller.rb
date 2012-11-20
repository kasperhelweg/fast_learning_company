class LearnersController < ApplicationController
  before_filter :auth
  load_and_authorize_resource :find_by => :id_hash 
  
  def index
  end

  def show
  end
  
  def new
    # Ressource already loaded
  end
  
  def create
    @learner = @company.learners.new( params[:learner] )
    if @learner.save
      flash[:success] = "Learners staged!"
      redirect_to current_user
    else
      render 'new'
    end   
  end
  
  def edit
  end
  
  def update
    # Resource already loaded
    if @learner.update_attributes( params[:learner] )
      flash[:success] = "profil opdateret"      
      sign_in @learner
      redirect_to current_user 
    else
      render 'edit'
    end
  end
  
  private
  def auth
    if current_user.role? :company
      @company = Company.find_by_id_hash( params[:company_id] )
      # @learner = Learner.find_by_id_hash( params[:id] )
    end
  end
end
