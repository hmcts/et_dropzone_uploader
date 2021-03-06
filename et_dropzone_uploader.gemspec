$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "et_dropzone_uploader/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "et_dropzone_uploader"
  spec.version     = EtDropzoneUploader::VERSION
  spec.authors     = ["Efstathios Stivaros"]
  spec.email       = ["efstathiosstivaros@gmail.com"]
  spec.homepage    = "https://github.com/hmcts/et_dropzone_uploader"
  spec.summary     = "Enables ET forms to upload files via Dropzone"
  spec.description = "This gem enables forms for Employment Tribunals (i.e. ET1 and ET3) to upload files to AWS/Azure directly from the browser via Dropzone."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = ''
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", ">= 5.2.2"
  spec.add_dependency 'dropzonejs-rails', '~> 0.8'
  spec.add_dependency 'rack-proxy', '~> 0.6.5'
end
