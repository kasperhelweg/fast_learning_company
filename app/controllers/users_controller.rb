class UsersController < ApplicationController

  respond_to :html, :xml, :json
  load_and_authorize_resource :find_by => :id_hash

  def index
  end

  def show
    # Resource already loaded
  end
    
  def new
    
  end
  
  def create
  end
  
  def edit
    # Resource already loaded
  end

  def update
    # Resource already loaded
    if @user.update_attributes( params[:user] )
      flash[:success] = "profil opdateret"      
      sign_in @user
      redirect_to current_user
    else
      render 'edit'
    end
  end
  
  def destroy
  end
end
