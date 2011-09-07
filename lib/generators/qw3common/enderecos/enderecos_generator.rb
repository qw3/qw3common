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
          Time.now.utc.strftime("%Y%m%d%H%M%S").to_s + rand(1230).to_s
        else
          "%.3d" % (current_migration_number(dirname) + 1)
        end
      end
      
      def create_migrations
        migration_template 'db/migrate/create_paises.rb', 'db/migrate/create_paises.rb'
        migration_template 'db/migrate/create_estados.rb', 'db/migrate/create_estados.rb'
        migration_template 'db/migrate/create_cidades.rb', 'db/migrate/create_cidades.rb'
        migration_template 'db/migrate/create_enderecos.rb', 'db/migrate/create_enderecos.rb'
      end
      
      def create_seed
        copy_file 'db/seeds.rb', 'db/seeds/enderecos.rb'
        inject_into_file 'db/seeds.rb' do
           "\nrequire File.expand_path( '../seeds/enderecos', __FILE__ )\n"
        end
        rake 'db:seed'
      end
      
      def copy_javascript_files
        copy_file 'assets/javascripts/endereco.js', 'assets/javascripts/qw3/endereco.js'
      end
      
    end
  end
end
