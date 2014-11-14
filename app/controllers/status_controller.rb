class StatusController < ApplicationController
  def index
  end

  def create
		#cria variavel usuario 
		status = Status.new status_params
		render :json => status
		
		
		#verifica se ha erro no objeto
		#if !statusbacklog.valid?
		#	redirect_to new_statusbacklog_path, :flash => { :error => "Ocorreu um erro!", :messages =>  statusbacklog.errors.full_messages }
		#else
		#	statusbacklog.save
		#	redirect_to statusbacklog_index_path
			#render :json => sistema
		#end
  
  end
  
  
  def new
	#Efetua a leitura de todos os sistemas  
	@categorias = Categoria.all
		
	respond_to do |format|
		format.html
		format.xml { render :xml => @categorias.to_xml }
		format.json { render :json => @categorias.to_json }	
	end  
  end

  def getfilter
		#Efetua a leitura de todos os sistemas  
		@status = Status.all
		
		respond_to do |format|
		  #format.html
		  #format.xml { render :xml => @categoria.to_xml }
		  format.json { render :json => @status.to_json }
		end  
  end
  
  private
  def status_params
	params.require(:status).permit(:descricao, :categoria, :ativo)
  end	

end
