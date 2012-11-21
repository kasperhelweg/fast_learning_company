module OrdersHelper
  private
  
  def current_order
    Order.find(session[:order_id])
  rescue ActiveRecord::RecordNotFound
    order = current_user.account.orders.create
    session[:order_id] = order.id
    order
  end
end
