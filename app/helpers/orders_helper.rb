module OrdersHelper
  private
  
  def current_order
    order = Order.find_by_id(session[:order_id])

    if !order || order.completed?
      order = current_user.account.orders.create
      session[:order_id] = order.id
    end
    order
  end
end
