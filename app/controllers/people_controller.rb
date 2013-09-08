class PeopleController < ApplicationController

	def new
		@new_person = Person.new
	end

	def create
		 person = Person.create(params[:person])
		 render :json => person
	end


end
