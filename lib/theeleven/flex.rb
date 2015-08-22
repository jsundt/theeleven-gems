require "theeleven/flex/version"
require 'rails/generators'

module Theeleven
  module Flex
    module Rails
      class Engine < ::Rails::Engine
      end
    end

    class OverrideGenerator < Rails::Generators::Base
      source_root File.expand_path('..', __FILE__)

      # Copy all needed stylesheets in the asset directory of the application
      def copy_stylesheets
        FileUtils.mkdir_p "app/assets/stylesheets/base"

        #Copy variable file
        copy_file "../../vendor/css/theeleven-flex/_defaults.scss", "app/assets/stylesheets/base/overrides.scss"

      end
    end #end generator
  end
end
