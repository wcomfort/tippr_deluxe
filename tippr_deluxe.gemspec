# frozen_string_literal: true

require_relative "lib/tippr_deluxe/version"

Gem::Specification.new do |spec|
  spec.name = "tippr_deluxe"
  spec.version = TipprDeluxe::VERSION
  spec.authors = ["Will"]
  spec.email = ["wcomfort@seismic.com"]

  spec.summary = "Provides a low regular or high tip based on total"
  spec.description = "Require TipprDeluxe class and pass in total and tip amount to calculate tip"
  spec.homepage = "https://github.com/wcomfort/tippr_deluxe"
  spec.required_ruby_version = ">= 2.6.0"
  spec.files         = Dir.glob("{bin,lib,template}/**/*") + %w(LICENSE.txt README.md)
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
