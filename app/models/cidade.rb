# -*- encoding : utf-8 -*-
class Cidade < ActiveRecord::Base
  belongs_to :estado
  
  validates :nome, :presence => true
end
