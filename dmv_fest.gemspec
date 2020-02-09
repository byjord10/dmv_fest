
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dmv_fest/version"

Gem::Specification.new do |spec|
  spec.name          = "dmv_fest"
  spec.version       = DmvFest::VERSION
  spec.authors       = ["'Brianna Jordan'"]
  spec.email         = ["'bryvjordan9@gmail.com'"]

  spec.summary       = %q{A tracker for all DMV music festivals. Receive notifications on sale dates and line ups all in one app. Get ahead of the crowd and save money on early ticket sales.}
  spec.description   = %q{This application has been created to keep track of all the DMV music festivals as opposed to going to multiple websites. The line up, date, and price of General Admissions and VIP tickets will be available to you as soon as it is posted.  }
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = "https://github.com/byjord10/dmv_fest"
    spec.metadata["source_code_uri"] = "https://github.com/byjord10/dmv_fest"
    spec.metadata["changelog_uri"] = "https://github.com/byjord10/dmv_fest/blob/master/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

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
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
