lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "clowns/version"

Gem::Specification.new do |spec|
  spec.name          = "clowns"
  spec.version       = Clowns::VERSION
  spec.authors       = ["Elliott Hilaire"]
  spec.email         = ["elliott.hilaire@cultureamp.com"]

  spec.summary       = "clowns"
  spec.description   = "clowns"
  spec.homepage      = "https://github.com/elliotthilaire-ca/clowns"
  spec.license       = "MIT"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/elliotthilaire-ca/clowns"
  spec.metadata["changelog_uri"] = "https://github.com/elliotthilaire-ca/clowns"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "gem-release", "~> 2.1.1"
end
