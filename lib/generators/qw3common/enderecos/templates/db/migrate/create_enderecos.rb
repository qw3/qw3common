# -*- encoding : utf-8 -*-
class CreateEnderecos < ActiveRecord::Migration
  def self.up
    create_table :enderecos do |t|
      t.string :rua
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cep
      t.string :latitude
      t.string :longitude
      t.references :cidade
    end
  end

  def self.down
    drop_table :enderecos
  end
end
