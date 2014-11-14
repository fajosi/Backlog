class SessionsController < ApplicationController


	def create
		#procura o usuario pela senha 
		user = User.find_by_email(params[:user][:email])
		
		#verifica se encontrou
		if !user.nil?

			if user.senha == params[:user][:senha]
				session[:user_id] = user.id
				redirect_to main_path
			else
				redirect_to root_path, :flash => { :errorLogin => "Senha inválida", :messages =>  nil }				
			end

		else
		
			redirect_to root_path, :flash => { :errorLogin => "Usuário não encontrado", :messages =>  nil }				
		end		
	end 

	def destroy
		session.destroy
		
		redirect_to new_session_path
	end 


	def new
	end
	
	
end
