class HomeController < ApplicationController
	def index
		@products = Product.where(product_type: "handset")
		@brands = Product.distinct.pluck(:brand)
	end

	def handsets
		@products = Product.where(product_type: "handset")
		@brands = Product.distinct.pluck(:brand)
	end

	def prepay
	end

	def subscriptions
	end
end
