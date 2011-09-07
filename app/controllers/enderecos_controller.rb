class EnderecosController < ApplicationController
  def gerar_combo_cidade
    @cidades = Cidade.where( :estado_id => params[:estado] )
    respond_to do |format| 
      format.js
    end
  end
end
