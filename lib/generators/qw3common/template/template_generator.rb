# -*- encoding : utf-8 -*-
module Qw3common
  module Generators
    class TemplateGenerator < Rails::Generators::Base
      
      source_root File.expand_path("../templates", __FILE__)
      
      def create_devise
        
        if yes?('Gostaria de criar o usuário do Devise?')
          gem 'devise'
          generate 'devise:install'
          copy_file 'config/locales/devise.pt-BR.yml', 'config/locales/devise.pt-BR.yml'
          model_name = ask('Qual o nome do usuário do Devise?')
          model_name = 'administrador' if model_name.blank?
          generate 'devise', model_name
        end
        
      end
      
      def generate_javascript_files
        copy_file 'assets/javascripts/checkbox.js', 'public/javascripts/qw3/checkbox.js'
        copy_file 'assets/javascripts/mascara.js', 'public/javascripts/qw3/mascara.js'
        copy_file 'assets/javascripts/notice.js', 'public/javascripts/qw3/notice.js'
        copy_file 'assets/javascripts/titulo_clicavel.js', 'public/javascripts/qw3/titulo_clicavel.js'
      end
      
      def generate_stylesheet_files
        copy_file 'assets/stylesheets/login.css', 'public/stylesheets/qw3/login.css'
        copy_file 'assets/stylesheets/notice.css', 'public/stylesheets/qw3/notice.css'
        copy_file 'assets/stylesheets/template.backend.css', 'public/stylesheets/qw3/template.backend.css'
        copy_file 'assets/stylesheets/template.css', 'public/stylesheets/qw3/template.css'
      end
      
      def generate_html_layouts
        if yes? 'Gerar layouts de exemplo?'
          copy_file 'views/layouts/backend_login.html.erb', 'app/views/layouts/qw3/backend_login.html.erb'
          copy_file 'views/layouts/backend.html.erb', 'app/views/layouts/qw3/backend.html.erb'
          copy_file 'views/template/_leftbar.html.erb', 'app/views/template/_leftbar.html.erb'
        end
      end
      
      def copy_locale_files
        copy_file 'config/locales/pt-BR.yml', 'config/locales/pt-BR.yml'
      end
      
    end
  end
end
