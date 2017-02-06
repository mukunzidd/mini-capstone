# class ImagesController < ApplicationController
# 	before_action :find_image, only: [:show, :edit, :update, :destroy]

# 	def index
# 		@images = Image.all
# 		redirect_to @image	
# 	end	

# 	def new
# 		@image = Image.new
# 	end

# 	def create
# 		@image = Image.new(image_params)
# 		if @image.save
# 			redirect_to '/'
# 		end
# 	end

# 	end

# 	def show
		
# 	end

# 	def edit
		

# 	def update
		
# 	end

# 	def delete
		
# 	end

# 	private
# 		def find_image
# 			@image = Image.find(params[:id])			
# 		end

# 		def image_params
# 			params.require(:image).permit(:url, :product_id)			
# 		end
# end
