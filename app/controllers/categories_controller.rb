class CategoriesController < ApplicationController
	respond_to :json

	def index
		categories = Category.all
		render json: categories.select(:id, :category)
	end
end
