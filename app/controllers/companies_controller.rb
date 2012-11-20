class CompaniesController < ApplicationController
  load_and_authorize_resource :find_by => :id_hash

  def show
  end
  
  def edit
  end

  def update
    # Resource already loaded
    if @company.update_attributes( params[:company] )
      flash[:success] = "profil opdateret"      
      sign_in @company
      redirect_to current_user
    else
      render 'edit'
    end
  end
  
  def destroy
  end

end
