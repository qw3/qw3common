# -*- encoding : utf-8 -*-
module Qw3common
  module Generators
    class InstallGenerator < Rails::Generators::Base
      
      def run_all_generators
        generate 'qw3common:settings'
        generate 'qw3common:pagination'
        generate 'qw3common:paperclip'
        generate 'qw3common:template'
        generate 'qw3common:enderecos'
      end
      
      def include_gem_settings
        gem "brstring"
        gem "brcep"
        gem "httparty"
      end
      
    end
  end
end
