class CheckoutController < ApplicationController
  include Wicked::Wizard

  steps :connect, :confirm

  def show
    # All logic should move into models
    @order = current_order
    @learners = current_user.learners.where("status == 'staged'")
    @learners.each do |learner|
      line_item = LineItem.new
      line_item.user = learner
      line_item.product = Product.first
      @order.line_items << line_item
    end
    render_wizard
  end

  def update
    @order = current_order
    render_wizard @order
  end

  private  
  def finish_wizard_path
    current_user
  end

end
