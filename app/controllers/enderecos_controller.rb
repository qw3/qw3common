class EnderecosController < ApplicationController
  
  protect_from_forgery :except => [:gerar_combo_cidade]

  def atualiza_dados_cep
    begin
      @endereco = BuscaEndereco.por_cep(params[:cep])
      @tipo = params[:tipo]
    rescue
    end
    
    respond_to do |format|
      format.js
    end
  end
  
  def gerar_combo_cidade
    @estado = params[:estado] unless params[:estado].blank?
    @cidade = params[:cidade] unless params[:cidade].blank?
    respond_to do |format| 
      format.js
    end
  end
end
