class WordsController < ApplicationController
	respond_to :json

	def word
		unless params[:category_id].nil?
			word = Word.where(category_id: params[:category_id]).order('RAND()').limit(1)
			render json: word
		end
	end
end
