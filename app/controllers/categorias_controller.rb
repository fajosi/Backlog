class CategoriasController < ApplicationController
  def index
  end

  def create
		#cria variavel usuario 
		@categoria = Categoria.new categoria_params
		
		#verifica se ha erro no objeto
		if !@categoria.valid?
			redirect_to new_categoria_path, :flash => { :error => "Ocorreu um erro!", :messages =>  @categoria.errors.full_messages }
		else
			@categoria.save
			redirect_to categorias_path
			#render :json => sistema
		end
  
  end 

  def new
  end

  def getfilter
		#Efetua a leitura de todos os sistemas  
		@categoria = Categoria.all
		
		respond_to do |format|
		  format.html
		  format.xml { render :xml => @categoria.to_xml }
		  format.json { render :json => @categoria.to_json }
		end  
  end
  
	private
	def categoria_params
		params.require(:categoria).permit(:descricao, :ativo)
	end	
  
end
