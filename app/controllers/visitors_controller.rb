# We define class name it and tell it to inherit from AppController from Rails API
class visitorsController < ApplicationController

	def new 
		# @owner is an instance variable (because of @)
		# Instance variables are available in corresponding view files.
		# Each controller action(method) responds to a request by obtaining a model (if data is needed) 
		# and rendering a view.
		@owner = Owner.new
		# The new action renders template in views - new.html.erb
		# What it does is, the new action calls the render method: render "visitors/new"
	end
end