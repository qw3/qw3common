# -*- encoding : utf-8 -*-

require 'rails/generators'
require 'rails/generators/migration'

module Qw3common
  module Generators
    class EnderecosGenerator < Rails::Generators::Base
      
      include Rails::Generators::Migration
      
      source_root File.expand_path("../templates", __FILE__)
      
      # Implement the required interface for Rails::Generators::Migration.
      # taken from http://github.com/rails/rails/blob/master/activerecord/lib/generators/active_record.rb
      def self.next_migration_number(dirname)
        if ActiveRecord::Base.timestamped_migrations
          Time.now.utc.strftime("%Y%m%d%H%M%S").to_s
        else
          "%.3d" % (current_migration_number(dirname) + 1)
        end
      end
      
      def create_migrations
        if yes?( "Criar migrations?" )
          migration_template 'db/migrate/create_paises.rb', 'db/migrate/create_paises.rb'
          sleep( 1.0 ) # Espera 1 segundo para que o timestamp da proxima migration seja diferente
          migration_template 'db/migrate/create_estados.rb', 'db/migrate/create_estados.rb'
          sleep( 1.0 ) # Espera 1 segundo para que o timestamp da proxima migration seja diferente
          migration_template 'db/migrate/create_cidades.rb', 'db/migrate/create_cidades.rb'
          sleep( 1.0 ) # Espera 1 segundo para que o timestamp da proxima migration seja diferente
          migration_template 'db/migrate/create_enderecos.rb', 'db/migrate/create_enderecos.rb'
          sleep( 1.0 ) # Espera 1 segundo para que o timestamp da proxima migration seja diferente
        end
      end
      
      def copy_javascript_files
        if yes?( "Copiar os arquivos javascript?")
          copy_file 'assets/javascripts/endereco.js', 'public/javascripts/qw3/endereco.js'
        end
      end
      
      def create_seed
        if yes?( "Criar seeds?" )
          copy_file 'db/seeds.rb', 'db/seeds/enderecos.rb'
          append_file 'db/seeds.rb' do
             "\nrequire File.expand_path( '../seeds/enderecos', __FILE__ )\n"
          end
        end
        
        if yes?( "Rodar rake db:migrate?" )
          rake 'db:migrate'
        end
        
        if yes? 'Quer rodar o seeds de Endereço?'
          rake 'db:seed'
        end
        
      end
      
      def create_route
        if yes?( "Criar rotas?" )
          route 'match "/enderecos/gerar_combo_cidade" => "enderecos#gerar_combo_cidade"'
          route 'get "enderecos/atualiza_dados_cep"'
        end
      end
      
    end
  end
end
