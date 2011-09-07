# -*- encoding : utf-8 -*-
class CreatePaises < ActiveRecord::Migration
  def self.up
    create_table :paises do |t|
      t.string :nome
      t.string :acronimo
      t.string :moeda
      t.string :bandeira
    end
  end

  def self.down
    drop_table :paises
  end
end
