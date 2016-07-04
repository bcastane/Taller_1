class WelcomeController < ApplicationController
  def index
  end

  def thanks

  	@user=User.new
  	@user.name=params[:nombre]
  	@user.age = params[:edad].to_i
  	@user.mail=params[:email]
  	@user.save
  end

end
