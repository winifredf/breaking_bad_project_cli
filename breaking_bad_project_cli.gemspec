libx = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(libx) unless $LOAD_PATH.include?(libx)
require "breaking_bad_project_cli/version"

Gem::Specification.new do |spec|
  spec.name          = "breaking_bad_project_cli"
  spec.version       = BreakingBadProjectCli::VERSION
  spec.authors       = ["'Winifred Frierson'"]
  spec.email         = ["'Winifred.Frierson@gmail.com'"]
  spec.files         = ["lib/breaking_bad_project_cli.rb", "lib/breaking_bad_project_cli/cli.rb", "lib/breaking_bad_project_cli/api.rb", "lib/breaking_bad_project_cli/characters.rb", "bin/breaking_bad_project_cli_character_finder"] 
  spec.summary       = "All Characters in Breaking Bad"
  spec.description   = "Provides details of each character in the Breaking Bad television series"
  spec.homepage      = "https://www.breakingbadapi.com/api/characters"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "'http://rubygems.org'/api/v1/api_key'"

    # spec.metadata["homepage_uri"] = spec.homepage
    # spec.metadata["source_code_uri"] = "https://www.breakingbadapi.com/api/characters"
  #   spec.metadata["changelog_uri"] = "https://www.breakingbadapi.com/api/characters"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 13.0.1"
  spec.add_development_dependency "pry", "~> 0.13.0"
  spec.add_development_dependency "rest-client", "~> 3.0.8"
  end
