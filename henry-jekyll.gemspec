# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "henry-jekyll"
  spec.version       = "1.3.2"
  spec.authors       = ["Kaushik Gopal"]
  spec.email         = ["c@jkl.gg"]

  spec.summary       = "Henry: Jekyll theme with a gorgeous reading experience and packed with features."
  spec.homepage      = "https://blog.jkl.gg/henry-jekyll-theme/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-redirect-from", "~> 0.16"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "webrick", "~> 1.7"
end
