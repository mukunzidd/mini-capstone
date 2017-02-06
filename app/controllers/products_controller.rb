class ProductsController < ApplicationController

	before_filter :find_products, only: [:show, :edit, :update, :destroy]

	def index
		if params[:sort]
			@products = Product.all.order(price: params[:sort])
		elsif params[:filter] == "discount"
      @products = Product.discounted_products
		else
				@products = Product.all.order(created_at: :desc)
		end
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to @product
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end
	end

	def destroy
		@product.destroy
		redirect_to root_path
	end

	private
		def find_products
			@product = Product.find_by(id: params[:id])
		end

		def product_params
			params.require(:product).permit(:name, :description, :price, :supplier_id)
		end

end
