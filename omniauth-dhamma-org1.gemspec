# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
puts "****"
puts "#{`ls`} +++ #{$LOAD_PATH}"
#require "version"


#require File.expand_path(
#  File.join('..', 'lib', 'omniauth-dhamma-org1', 'version'),
#  __FILE__
#)

v_dir = File.expand_path(File.join('..', 'lib', 'omniauth-dhamma-org1'), __FILE__)
puts "****3 #{v_dir}"
require "#{v_dir}/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-dhamma-org1"
  spec.version       = OmniauthDhammaOrg1::VERSION
  spec.authors       = ['Ernst Arnold']
  spec.email         = ['ernst@eka.one']

  spec.summary       = %q{A DhammaOrg1 OAuth2 strategy for OmniAuth 1.x}
  spec.description   = %q{A DhammaOrg1 OAuth2 strategy for OmniAuth 1.x. This allows you to login to paticipating DhammaOrg apps with your ruby app.}
  spec.homepage      = "https://calm.dhamma.org"  # TODO
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    #spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
    #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
    spec.metadata["source_code_uri"] = "https://calm.dhamma.org"
    spec.metadata["changelog_uri"] = "https://calm.dhamma.org"

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

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.6"
  spec.add_development_dependency 'rubocop', '~> 0.49'
  
  spec.required_ruby_version = '>= 2.2'
  
  spec.add_runtime_dependency 'jwt', '>= 2.0'
  spec.add_runtime_dependency 'oauth2', '~> 1.1'
  spec.add_runtime_dependency 'omniauth', '~> 2.0'
  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.7.1'
    puts "****2"
end
