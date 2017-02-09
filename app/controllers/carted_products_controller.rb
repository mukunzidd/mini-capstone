class CartedProductsController < ApplicationController
	def create
		product = Product.find_by(id: params[:product_id])
		quantity = params[:quantity].to_i
		product_id = product.id
		subtotal = quantity * product.price
	  tax = quantity * product.tax

	  find_order = Order.find_by(user_id: current_user.id)

	  new_order = Order.new(quantity: quantity, user_id: current_user.id, open: false, subtotal: subtotal,tax: tax)

		if find_order == nil
	    order = new_order
	    order.save

	  elsif find_order.open == true
	    order = new_order
	    order.save

	  else find_order.open == false
	  	order = find_order
	  end

	  cart = CartedProduct.new(quantity: quantity, product_id: product_id, order_id: order.id)

	  if cart.save
      flash[:success] = "Product Added to Cart, Keep Shopping!"
      redirect_to root_path
    else
      flash[:danger] = "Error Adding to Cart"
      redirect_to 'back'
    end

	end

	def index
		@message = nil
		orders = Order.where("user_id = ? AND open = ?", current_user.id, false)
		if orders.empty?
			@message = "Taddaaaaaaa!!!!! There is no item in your shopping Cart!"
		else
			@cart = CartedProduct.where("order_id = ?", orders.first.id)
		end
		@order = orders.first
	end
end
