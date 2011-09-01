require "qw3common/version"

module Qw3common
  class Qw3common < Rails::Engine
    config.autoload_paths << File.expand_path("../app", __FILE__)
  end
end
