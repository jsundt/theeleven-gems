require "theeleven/boilerplate/version"
require 'rails/generators'

module Theeleven
  module Boilerplate
    class Engine < ::Rails::Engine
    end

    class CreateGenerator < Rails::Generators::Base
      source_root File.expand_path('..', __FILE__)

      # Copy all needed stylesheets in the asset directory of the application
      def copy_stylesheets
        FileUtils.mkdir_p "app/assets/javascripts/core"
        FileUtils.mkdir_p "app/assets/stylesheets/base"
        FileUtils.mkdir_p "app/assets/stylesheets/modules"
        FileUtils.mkdir_p "app/assets/stylesheets/pages"
        FileUtils.mkdir_p "app/views/icons"
        FileUtils.mkdir_p "app/views/shared"
        FileUtils.remove_file "app/assets/stylesheets/application.css"


        #Application JS
        copy_file "../../templates/js/application.js", "app/assets/javascripts/application.js"


        #Application CSS
        copy_file "../../templates/css/application.scss", "app/assets/stylesheets/application.scss"
        copy_file "../../templates/css/bootstrap_and_overrides.css.less", "app/assets/stylesheets/bootstrap_and_overrides.css.less"
        #Base CSS files
        copy_file "../../templates/css/base/animations.scss", "app/assets/stylesheets/base/animations.scss"
        copy_file "../../templates/css/base/config.scss", "app/assets/stylesheets/base/config.scss"
        copy_file "../../templates/css/base/mixins.scss", "app/assets/stylesheets/base/mixins.scss"
        copy_file "../../templates/css/base/shame.scss", "app/assets/stylesheets/base/shame.scss"
        copy_file "../../templates/css/base/type.scss", "app/assets/stylesheets/base/type.scss"
        copy_file "../../templates/css/base/layout.scss", "app/assets/stylesheets/base/layout.scss"
        #CSS Modules
        copy_file "../../templates/css/modules/buttons.scss", "app/assets/stylesheets/modules/buttons.scss"
        copy_file "../../templates/css/modules/icons.scss", "app/assets/stylesheets/modules/icons.scss"
        

        #Application Layout
        copy_file "../../templates/views/layouts/application.html.erb", "app/views/layouts/application.html.erb"
        #Shared views
        copy_file "../../templates/views/shared/_favicons.html.erb", "app/views/shared/_favicons.html.erb"
        copy_file "../../templates/views/shared/_scripts.html.erb", "app/views/shared/_scripts.html.erb"
        copy_file "../../templates/views/shared/_navbar.html.erb", "app/views/shared/_navbar.html.erb"
        copy_file "../../templates/views/shared/_footer.html.erb", "app/views/shared/_footer.html.erb"
        #Icon set
        copy_file "../../templates/views/icons/_sprite.html.erb", "app/views/icons/_sprite.html.erb"

      end
    end #end generator
  end
end
