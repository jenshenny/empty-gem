# frozen_string_literal: true

require_relative "lib/empty/gem/version"

Gem::Specification.new do |spec|
  spec.name = "jenshenny_empty_gem"
  spec.version = Empty::Gem::VERSION
  spec.authors = ["Jenny Shen"]
  spec.email = ["jenny.shen@shopify.com"]

  spec.summary = "Write a short summary, because RubyGems requires one."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = "https://github.com/jenshenny/empty-gem"
  spec.metadata["source_code_uri"] = "https://github.com/jenshenny/empty-gem"
  spec.metadata["changelog_uri"] = "https://github.com/jenshenny/empty-gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
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
