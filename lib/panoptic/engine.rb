# frozen_string_literal: true

require "turbo-rails"
require "pagy"

module Panoptic
  class Engine < ::Rails::Engine
    isolate_namespace Panoptic

    initializer "panoptic.assets.precompile" do |app|
      app.config.assets.precompile += %w[panoptic_manifest.js]
    end
  end
end
