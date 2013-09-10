class PeopleController < ApplicationController

	def new
		@new_person = Person.new
	end

	def create
		 @person = Person.create(params[:person])
		 render :json => { :body => render_to_string(:partial => 'show', :locals => {:person => @person}, :layout => false)}
	end

end
