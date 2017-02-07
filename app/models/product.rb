class Product < ApplicationRecord
	belongs_to :supplier
	has_many :images
	has_many :orders
	has_many :category_products
	has_many :categories, through: :category_products


	def self.discounted_products
		@products = Product.where("price < ", 600000)		
	end

	def tax
		price * 0.18
	end
end


