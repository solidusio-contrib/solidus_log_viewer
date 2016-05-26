module SolidusLogViewer
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def add_javascripts
        append_file "vendor/assets/javascripts/spree/backend/all.js", "//= require spree/backend/solidus_log_viewer\n"
      end

      def add_stylesheets
        inject_into_file "vendor/assets/stylesheets/spree/frontend/all.css", " *= require spree/backend/solidus_log_viewer\n", before: '*/', verbose: true
      end
    end
  end
end
