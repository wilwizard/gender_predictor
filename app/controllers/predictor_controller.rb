class PredictorController < ApplicationController

	def create
		p Predictor.guess(params)
	end
end
