module Qw3common
  module Generators
    class TemplateGenerator < Rails::Generators::Base
      
      source_root File.expand_path("../templates", __FILE__)
      
      def create_dependencies
        gem 'jquery-rails'
        generate 'jquery:install'
      end
      
      def create_devise
        
        if yes?('Gostaria de criar o usuário do Devise?')
          gem 'devise'
          generate 'devise:install'
          model_name = ask('Qual o nome do usuário do Devise?')
          model_name = 'administrador' if model_name.blank?
          generate 'devise', model_name
        end
        
      end
      
      def generate_javascript_files
        
      end
      
    end
  end
end
