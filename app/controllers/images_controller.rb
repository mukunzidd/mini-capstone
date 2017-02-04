class ImagesController < ApplicationController
	

	def new
		@image = Image.new
	end

	def create
		@image = Image.new(image_params)
		if @image.save
			redirect_to '/'
		end
	end

	end

	def show
		
	end

	def edit
		

	def update
		
	end

	def delete
		
	end

	private
		def image_params
			params.require(:image).permit(:url, :product_id)			
		end
end
