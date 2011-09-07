# -*- encoding : utf-8 -*-
class Pais < ActiveRecord::Base

  has_many :estados  
  validates :acronimo, :uniqueness => true
  
end
