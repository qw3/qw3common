module Qw3common
  module Generators
    class PaginationGenerator < Rails::Generators::Base
      
      source_root File.expand_path("../templates", __FILE__)
      
      def insert_gem
        gem "will_paginate"
      end
      
      def create_config_files
        #initializers
        copy_file "config/initializers/pagination.rb", "config/initializers/qw3common/pagination.rb"
        #locales
        copy_file "config/locales/pagination.en.yml", "config/locales/qw3common.pagination.en.yml"
        copy_file "config/locales/pagination.pt-BR.yml", "config/locales/qw3common.pagination.pt-BR.yml"
      end
      
      def create_public_files
        #javascripts
        copy_file "assets/javascripts/pagination.js", "assets/javascript/qw3/pagination.js"
        #stylesheets
        copy_file "assets/stylesheets/pagination.css", "public/javascript/qw3/pagination.css"
      end
      
    end
  end
end
