module Qw3common
  module Generators
    class PaperclipGenerator < Rails::Generators::Base
      
      source_root File.expand_path("../templates", __FILE__)
      
      def create_missing_images_files
        copy_file "public/images/missing/original.png", "public/images/qw3common/missing/original.png"
        copy_file "public/images/missing/small.png", "public/images/qw3common/missing/small.png"
        copy_file "public/images/missing/thumb.png", "public/images/qw3common/missing/thumb.png"
      end
      
    end
  end
end
