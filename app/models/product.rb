class Product < ApplicationRecord
	belongs_to :supplier

	def self.discounted_products
		@products = Product.where("price < ",4000)		
	end

	def vat
		price * 0.18
	end
end
