# -*- encoding : utf-8 -*-
class CreateEstados < ActiveRecord::Migration
  def self.up
    create_table :estados do |t|
      t.string :nome
      t.string :acronimo
      t.references :pais
    end
  end

  def self.down
    drop_table :estados
  end
end
