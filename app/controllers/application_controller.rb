class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :check_login
	
  def check_login
  
	controllers_without_login = %w(institutional registrations sessions)
  	
	if !controllers_without_login.include? controller_name
  		#if !view_context.user_signed_in?
  		#	redirect_to new_session_path
  		#end
      if !session[:user_id].present?
	    redirect_to new_session_path, :flash => { :errorLogin => "Área restrita efetue o login.", :messages =>  nil }
	  else
		@user = User.find(session[:user_id])
      end	
	  
	  
  	end
  end
end
