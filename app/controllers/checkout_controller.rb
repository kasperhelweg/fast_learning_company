class CheckoutController < ApplicationController
  include Wicked::Wizard
  
  steps :connect, :confirm
  
  def show
    # All logic should move into models
    @order = current_order #if step != steps.last
    @formatted_hash = @order.format_for_checkout
    # @learners = current_user.learners.where( "status == 'staged'" )
    
    render_wizard
  end
  
  def update
    @order = current_order
    #params[:order][:state] = 'complete' if step == steps.last
    @order.update_attributes( params[:order] )
    render_wizard @order
  end
  
  private  
  def finish_wizard_path
    current_user
  end
  
end
