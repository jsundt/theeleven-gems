require "theeleven/boilerplate/version"
require 'rails/generators'

module Theeleven
  module Boilerplate
    class Engine < ::Rails::Engine
    end

    class CreateGenerator < Rails::Generators::Base
      source_root File.expand_path('..', __FILE__)

      # Setup important files and folders
      def copy_files
        FileUtils.mkdir_p "app/assets/javascripts/core"
        FileUtils.mkdir_p "app/assets/stylesheets/base"
        FileUtils.mkdir_p "app/assets/stylesheets/modules"
        FileUtils.mkdir_p "app/assets/stylesheets/pages"
        FileUtils.mkdir_p "app/views/icons"
        FileUtils.mkdir_p "app/views/shared"
        FileUtils.mkdir_p "app/views/welcome"
        FileUtils.mkdir_p "app/views/welcome/brand"
        FileUtils.remove_file "app/assets/stylesheets/application.css"

        #Create Initial Controller
        copy_file "../../templates/rails/welcome_controller.rb", "app/controllers/welcome_controller.rb"

        #Edit routes file
        inject_into_file 'config/routes.rb', :after => "Rails.application.routes.draw do" do
          "\n\n  root to: 'welcome#brand'\n\n"
        end

        #Edit asset initializer file
        inject_into_file 'config/initializers/assets.rb', :after => "Precompile additional assets." do
          "\nRails.application.config.assets.precompile += %w( application__core.js )\nRails.application.config.assets.precompile += %w( application__core.scss )\n\n"
        end

        #Edit gemfile
        inject_into_file 'Gemfile', :after => "#add for generator" do
          "\n\ngem 'autoprefixer-rails'\ngem 'twitter-bootstrap-rails'\ngem 'less-rails'\ngem 'therubyracer', platforms: :ruby\n\ngem 'heroku-deflater', :group => :production\ngem 'rails_12factor', :group => :production"
        end

        #Create Initial welcome/brand
        copy_file "../../templates/views/welcome/brand.html.erb", "app/views/welcome/brand.html.erb"
        copy_file "../../templates/views/welcome/brand/_typography.html.erb", "app/views/welcome/brand/_typography.html.erb"
        copy_file "../../templates/views/welcome/brand/_iconset.html.erb", "app/views/welcome/brand/_iconset.html.erb"


        #Iconset image files
        copy_file "../../templates/images/te-default-icons.svg", "app/assets/images/te-default-icons.svg"
        copy_file "../../templates/images/te-social-icons.svg", "app/assets/images/te-social-icons.svg"


        #Application JS
        copy_file "../../templates/js/application.js", "app/assets/javascripts/application.js"
        copy_file "../../templates/js/application__core.js", "app/assets/javascripts/application__core.js"


        #Application CSS
        copy_file "../../templates/css/application__core.scss", "app/assets/stylesheets/application__core.scss"
        copy_file "../../templates/css/application.scss", "app/assets/stylesheets/application.scss"
        copy_file "../../templates/css/bootstrap_and_overrides.css.less", "app/assets/stylesheets/bootstrap_and_overrides.css.less"

        #Base CSS files
        copy_file "../../templates/css/base/_brands.scss", "app/assets/stylesheets/base/_brands.scss"
        copy_file "../../templates/css/base/_config.scss", "app/assets/stylesheets/base/_config.scss"
        copy_file "../../templates/css/base/_mixins.scss", "app/assets/stylesheets/base/_mixins.scss"
        copy_file "../../templates/css/base/_functions.scss", "app/assets/stylesheets/base/_functions.scss"
        copy_file "../../templates/css/base/_generators.scss", "app/assets/stylesheets/base/_generators.scss"
        copy_file "../../templates/css/base/_iconset.scss", "app/assets/stylesheets/base/_iconset.scss"
        copy_file "../../templates/css/base/typography.scss", "app/assets/stylesheets/base/typography.scss"
        copy_file "../../templates/css/base/animations.scss", "app/assets/stylesheets/base/animations.scss"
        copy_file "../../templates/css/base/layout.scss", "app/assets/stylesheets/base/layout.scss"
        copy_file "../../templates/css/base/shame.scss", "app/assets/stylesheets/base/shame.scss"

        #CSS Modules
        copy_file "../../templates/css/modules/buttons.scss", "app/assets/stylesheets/modules/buttons.scss"
        copy_file "../../templates/css/modules/forms.scss", "app/assets/stylesheets/modules/forms.scss"
        copy_file "../../templates/css/modules/tooltips.scss", "app/assets/stylesheets/modules/tooltips.scss"


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
