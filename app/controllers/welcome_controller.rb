class WelcomeController < ApplicationController

	layout :resolve_layout



  def index
  end

  def thanks

  	@user=User.new
  	@user.name=params[:nombre]
  	@user.age = params[:edad].to_i
  	@user.mail=params[:email]
  	@user.save
  end

  def landing


  end


     private   
      def resolve_layout
       case action_name
         when "landing"
          "layout2"
         else 
          "application"
         end
      end



end
