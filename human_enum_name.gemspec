lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "human_enum_name/version"

Gem::Specification.new do |spec|
  spec.name         = "human_enum_name"
  spec.version      = HumanEnumName::VERSION
  spec.authors      = ["Juraj Kostolansky"]
  spec.email        = ["juraj@kostolansky.sk"]

  spec.summary      = "I18n support for Rails enums"
  spec.homepage     = "https://github.com/jkostolansky/human_enum_name"
  spec.license      = "MIT"

  spec.files        = Dir["README.md", "LICENSE.txt", "human_enum_name.gemspec", "lib/**/*.rb"]
  spec.require_path = "lib"

  spec.required_ruby_version = ">= 2.3.0"

  spec.add_dependency "activesupport", ">= 4.2.0"
end
