module Qw3common
  module Generators
    class PaginationGenerator < Rails::Generators::Base
      
      source_root File.expand_path("../templates", __FILE__)
      
      def create_config_files
        #initializers
        copy_file "config/initializers/pagination.rb", "config/initializers/qw3common/pagination.rb"
        #locales
        copy_file "config/locales/pagination.en.yml", "config/initializers/qw3common.pagination.en.yml"
        copy_file "config/locales/pagination.pt-BR.yml", "config/initializers/qw3common.pagination.pt-BR.yml"
      end
      
      def create_public_files
        #javascripts
        copy_file "public/javascripts/pagination.js", "public/javascript/qw3common/pagination.js"
        #stylesheets
        copy_file "public/stylesheets/pagination.css", "public/javascript/qw3common/pagination.css"
      end
      
      def create_helpers_files
        copy_file "helpers/pagination_helper.rb", "app/helpers/pagination_helper.rb"
      end
      
    end
  end
end
