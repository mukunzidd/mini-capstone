class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
	end

	def create
		name = params[:name]
		description = params[:description]
		image = params[:image]

		@product = Product.new({name: name, description: description, image: image})

		@product.save


		if @product.save
			redirect_to @product
		else
			render 'new'
		end	
	end

	def show
		@product = Product.find(params[:id])
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

end
