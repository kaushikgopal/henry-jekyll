# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "henry-jekyll"
  spec.version       = "0.1.0"
  spec.authors       = ["Kaushik Gopal"]
  spec.email         = ["c@jkl.gg"]

  spec.summary       = "Henry: Jekyll theme with a gorgeous reading experience and packed with features."
  spec.homepage      = "https://blog.jkl.gg/henry-jekyll-theme/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
end
