class PeopleController < ApplicationController

	def new
	end

	def create
		 Person.create(params)
	end


end
