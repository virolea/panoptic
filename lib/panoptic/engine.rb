# frozen_string_literal: true

require "pagy"

module Panoptic
  class Engine < ::Rails::Engine
    isolate_namespace Panoptic

    initializer "panoptic.assets.precompile" do |app|
      app.config.assets.precompile += %w[panoptic/application.css]
    end
  end
end
