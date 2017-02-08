class OrdersController < ApplicationController
  def show
    @order = Order.find_by(id: params[:id])
  end

  def update
  	@order = Order.find_by(id: params[:id])
  	quantity = params[:quantity]
	  total = @order.subtotal + @order.tax

  	@order = Order.find_by(id: params[:id])

  	@order = Order.update(total: total, open: true, user_id: current_user.id)

  	render :show  	
  end
end
