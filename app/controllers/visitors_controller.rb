# We define class name it and tell it to inherit from AppController from Rails API
class VisitorsController < ApplicationController

  def new 
    # @owner is an instance variable (because of @)
    # Instance variables are available in corresponding view files.
    # Each controller action(method) responds to a request by obtaining a model (if data is needed) 
    # and rendering a view.

    # This Ruby trick (pattern matching) will create an array that you can pass into the class
    #   Note: This is probably overkill but it would help if you want to calculate other user's birthdates
    #
    # Ok, so take a look at the star symbol, without it this wouldn't work.
    # This is just like doing: 
    #   year, month, day = 1990, 12, 22
    *birthdate = 1990, 12, 22

    # Now if you notice the Owner model expects three variables, not an array but,
    #   we can trick the initialize method by telling to accept the items of this array
    #   Again, look at that beautiful star symbol making ruby magic. Kawaii coding! :)
    @owner = Owner.new(*birthdate)
    # The new action renders template in views - new.html.erb
    # What it does is, the new action calls the render method: render "visitors/new"
  end
end