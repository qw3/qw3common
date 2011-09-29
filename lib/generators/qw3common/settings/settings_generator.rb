# -*- encoding : utf-8 -*-
module Qw3common
  module Generators
    class SettingsGenerator < Rails::Generators::Base
      
      source_root File.expand_path("../templates", __FILE__)
      
      def include_gem
        gem "rails-settings", :git => "git://github.com/100hz/rails-settings.git"
      end
      
      def install_settings
        
        if yes? 'Já executou um bundle install?'
          
          generate "settings", 'settings'
          rake 'db:migrate'
          
          copy_file 'config/initializers/settings.rb', 'config/initializers/qw3_settings.rb' 
          
        end 
        
      end
      
   end
 end   
end
