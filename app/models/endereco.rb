# -*- encoding : utf-8 -*-
class Endereco < ActiveRecord::Base
  belongs_to :cidade
  
  validates :cidade_id, :rua, :cep, :presence => true
  
end
