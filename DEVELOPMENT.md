# Development

If you wish to build Henry from source and work on it directly (without the handy Docker setup) this page should have useful instructions.

## Prerequisite

* [Ruby](https://www.ruby-lang.org/en/documentation/installation/) 3.0.0
* [Bundler](https://bundler.io/)

## Setup

```shell
bundle install
```

Your theme is setup just like a normal Jekyll site! To test your theme run this command:

```shell
bundle exec jekyll serve -wIlo --drafts
```

This starts a Jekyll server using your theme. Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

## Building the Gem

This is only required for updating Henry's version on rubygems.org

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
