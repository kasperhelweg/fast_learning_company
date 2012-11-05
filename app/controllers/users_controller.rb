class UsersController < ApplicationController

  respond_to :html, :xml, :json

  def index
  end
  
  def create
  end
  
  def new
  end
  
  def edit
    @user = User.find_by_id_hash( params[:id] )
  end

  def show
  end
  
  def update
    @user = User.find_by_id_hash( params[:id] )
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
