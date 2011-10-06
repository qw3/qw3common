# -*- encoding : utf-8 -*-
class Endereco < ActiveRecord::Base
  belongs_to :cidade
  
  validates :cidade_id, :rua, :cep, :presence => true
  
  def Endereco.bairros(cidade_id = nil)
    conditions = " AND cidade_id = #{cidade_id}" unless cidade_id.nil?
    bairros = Endereco.select( 'distinct(bairro)' ).where( "bairro IS NOT NULL #{conditions}" ).order('bairro ASC')
    bairros_array = []
    bairros.each do |b|
      bairros_array.push b.bairro
    end
    return bairros_array
  end
   
end
