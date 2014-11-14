class RegistrationsController < ApplicationController
	def index
	end

	def create
		#cria variavel usuario 
		user = User.new user_params
		
		#valida preenchimento do usuario		  
		if user.valid?
			#render :json => user 
			user.save 
			redirect_to root_path
		else
			redirect_to registrations_path, :flash => { :error => "Ocorreu um erro!", :messages =>  user.errors.full_messages }
		  end

	end 
	

	private
	def user_params
		params.require(:user).permit(:nomeCompleto,:email,:senha, :ativo)
	end	

end
