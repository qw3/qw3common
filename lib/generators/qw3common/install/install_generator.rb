module Qw3common
  module Generators
    class InstallGenerator < Rails::Generators::Base
      
      def run_all_generators
        generate 'qw3common:pagination'
        generate 'qw3common:paperclip'
        generate 'qw3common:template'
      end
      
    end
  end
end
