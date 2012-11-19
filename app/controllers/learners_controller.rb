class LearnersController < ApplicationController
  load_and_authorize_resource :find_by => :id_hash
  def new
  end
end
