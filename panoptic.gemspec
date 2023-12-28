require_relative "lib/panoptic/version"

Gem::Specification.new do |spec|
  spec.name        = "panoptic"
  spec.version     = Panoptic::VERSION
  spec.authors     = ["Vincent Rolea"]
  spec.email       = ["3525369+virolea@users.noreply.github.com"]
  spec.homepage    = "https://github.com/virolea/panoptic"
  spec.summary     = "Web interface for the SoldiQueue queuing backend"
  spec.description = "Web interface for the SoldiQueue queuing backend"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1"
  spec.add_dependency "solid_queue", "~> 0.1"
  spec.add_dependency "kaminari", "~> 1.2"
end
