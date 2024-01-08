# frozen_string_literal: true

require "importmap-rails"
require "turbo-rails"
require "pagy"

module Panoptic
  class Engine < ::Rails::Engine
    isolate_namespace Panoptic

    initializer "panoptic.assets.precompile" do |app|
      app.config.assets.precompile += %w[panoptic/application.css panoptic/application.js]
    end

    initializer "panoptic.importmap", before: "importmap" do |app|
      app.config.importmap.paths << Engine.root.join("config/importmap.rb")

      app.config.importmap.cache_sweepers << root.join("app/javascript/panoptic")
    end
  end
end
