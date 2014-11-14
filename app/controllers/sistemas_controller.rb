class SistemasController < ApplicationController
	
	def index
		#Efetua a leitura de todos os sistemas  
		@sistemas = Sistema.all
		
		respond_to do |format|
		  format.html
		  format.xml { render :xml => @sistemas.to_xml }
		  format.json { render :json => @sistemas.to_json }
		end

	end

	def create
		#cria variavel usuario 
		sistema = Sistema.new sistema_params
		
		#verifica se ha erro no objeto
		if !sistema.valid?
			redirect_to new_sistema_path, :flash => { :error => "Ocorreu um erro!", :messages =>  sistema.errors.full_messages }
		else
			sistema.save
			redirect_to sistemas_path
			#render :json => sistema
		end
	end

	def delete
	end
	
	def getAll
		@sistemas = Sistema.all
		#render :json => Sistema.exists	
	end 

	def new
	end
	
	
	private
	def sistema_params
		params.require(:sistema).permit(:codigo,:nomeabreviado,:nomecompleto, :ativo)
	end	
	
end
