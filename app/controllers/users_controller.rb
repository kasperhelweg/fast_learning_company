class UsersController < ApplicationController

  respond_to :html, :xml, :json
  load_and_authorize_resource :find_by => :id_hash

  def index
  end

  def show
  end
    
  def new
  end
  
  def create
  end
  
  def edit
  end

  def update
  end
  
  def destroy
  end

end
