# -*- encoding : utf-8 -*-
class Estado < ActiveRecord::Base
  belongs_to :pais
  has_many :cidades
  
  validates :acronimo, :uniqueness => true
end
