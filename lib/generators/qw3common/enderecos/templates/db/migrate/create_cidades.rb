# -*- encoding : utf-8 -*-
class CreateCidades < ActiveRecord::Migration
  def self.up
    create_table :cidades do |t|
      t.string :nome
      t.string :latitude
      t.string :longitude
      t.integer :populacao
      t.references :estado
    end
  end

  def self.down
    drop_table :cidades
  end
end
