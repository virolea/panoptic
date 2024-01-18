require_relative "lib/panoptic/version"

Gem::Specification.new do |spec|
  spec.name        = "panoptic"
  spec.version     = Panoptic::VERSION
  spec.authors     = ["Vincent Rolea"]
  spec.email       = ["3525369+virolea@users.noreply.github.com"]
  spec.homepage    = "https://github.com/virolea/panoptic"
  spec.summary     = "Web interface for the SolidQueue queuing backend"
  spec.description = "Panoptic adds a real time web interface on top of SolidQueue to monitor processes, queues and jobs"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/virolea/panoptic/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", "~> 7.1"
  spec.add_dependency "solid_queue", "~> 0.1"
  spec.add_dependency "pagy", "~> 6.2"
  spec.add_dependency "turbo-rails", "~> 1.5"
end
