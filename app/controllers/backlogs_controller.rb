class BacklogsController < ApplicationController
  def index
	@categoria = Categoria.all
	@sistema = Sistema.all 
	@status = Status.all
	@classificacao = Classificacao.all
	
	@retorno = {
		:categorias =>@categoria,
		:sistemas =>@sistema
	}
	
	respond_to do |format|
		  #format.html
		  #format.xml { render :xml => @retorno.to_xml }
		  format.json { render :json => @retorno.to_json }
	end  

  end

  def new
	
  end

  def edit
  end

  def getfilter
  end
end
