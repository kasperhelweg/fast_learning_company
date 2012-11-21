class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  include PathsHelper
  include OrdersHelper
end
