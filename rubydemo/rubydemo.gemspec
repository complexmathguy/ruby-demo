require_relative 'lib/rubydemo/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubydemo'
  spec.version       = ''
  spec.authors       = [""]
  spec.email         = ["put_your_email_here@xyz.com"]
  spec.summary       = %q{Put description name here}
  spec.homepage      = "https://put-your-home-page-here.com"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/complexmathguy/ruby-demo.git"
  spec.metadata["changelog_uri"] = "https://github.com/complexmathguy/ruby-demo/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
