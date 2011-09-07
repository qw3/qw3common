module Qw3common
  module Generators
    class InstallGenerator < Rails::Generators::Base
      
      def run_all_generators
        generate 'qw3common:pagination'
        generate 'qw3common:paperclip'
        generate 'qw3common:template'
        generate 'qw3common:enderecos'
      end
      
    end
  end
end
