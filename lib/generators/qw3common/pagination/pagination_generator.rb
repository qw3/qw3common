module Qw3common
  module Generators
    class PaginationGenerator < Rails::Generators::Base
      
      source_root File.expand_path("../templates", __FILE__)
      
      def create_javascript_files
        copy_file "public/javascript/pagination.js", "public/javascript/qw3common/pagination.js"
      end
      
    end
  end
end
