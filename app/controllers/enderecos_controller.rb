class EnderecosController < ApplicationController
    def atualiza_dados_cep
    begin
      @endereco = BuscaEndereco.por_cep(params[:cep])
    rescue
      return false
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
