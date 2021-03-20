# Development

If you wish to build Henry from source and work on it directly (without the handy Docker setup) this page should have useful instructions.

## Prerequisite

* [Ruby](https://www.ruby-lang.org/en/documentation/installation/) 3.0.0
* [Bundler](https://bundler.io/)

## Setup

Start by adding a `Gemfile` to the repo

```Gemfile
source 'https://rubygems.org'
gemspec

gem "bundler"
gem "webrick"

gem "jekyll"
gem "jekyll-paginate", "~> 1.1"

group :jekyll_plugins do
    gem "jekyll-feed","~> 0.15"
    gem "jekyll-redirect-from","~> 0.16"
    gem "jekyll-seo-tag","~> 2.7"
    gem "jekyll-sitemap", "~> 1.4"
end
```

```shell
bundle install
```

Your theme is setup just like a normal Jekyll site! To test your theme run this command:

```shell
bundle exec jekyll serve -wIlo --drafts
```

This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

## Gem

```shell
trash henry-jekyll-*.gem
gem build henry-jekyll.gemspec  
```

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `henry-jekyll.gemspec` accordingly.

### Releasing to RubyGems

```shell
gem push henry-jekyll-*.*.*.gem
```

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
