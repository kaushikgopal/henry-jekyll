# Henry

<p align="center"><img src="assets/img/henry.png"></p>

Henry is a [Jekyll](https://jekyllrb.com/) theme with a gorgeous reading experience and packed with features. 

To find out more about all the features, check this intro [blog post](https://blog.jkl.gg/henry-jekyll-theme/).

By simply adding henry to your jekyll blog setup, you can now use all the same features there! 

In this directory, you'll find the files you need to be able to package up your theme into a gem. Put your layouts in `_layouts`, your includes in `_includes`, your sass files in `_sass` and any other assets in `assets`.

To experiment with this code, add some sample content and run `bundle exec jekyll serve` – this directory is setup just like a Jekyll site!

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "henry-jekyll"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: henry-jekyll
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install henry-jekyll

## Usage

## How to override styles

The theme should all just work but if you want to add a little flair and differentiate yourself from other sites/blogs you can do so by adding a few overrides `.scss` files to your `_sass/` directory:

1. `./assets/css/style.scss`
2. `./assets/theme_override.scss`
3. `./assets/main_override.scss`

Henry by default loads `_initialize.scss`, so we'll need to override that file like so: 

```scss
// inside ./assets/css/style.scss
@import "theme", "theme_override";
@import "mixins", "code", "base";
@import "main", "main_override";
```

You can now override Henry's style by updating two of those override files.

```scss
// inside ./_sass/theme_override.scss
// change font sizes, styles, colors in here

$font-size-regular:     30px;
$background-color:      black;
$color-text:            red;

// take a look at the main `theme.scss` file to see the full list of variables you can customize
```

To actually change specific styles, make sure to put them in the main override. The order of imports matter.

```scss
// inside ./_sass/main.scss
// change layout or site styles here

ul.post-list-content .post-link a.post-link-url {
    color: red
}

// take a look at the main `main.scss` file to see the current layout styles
```

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/kaushikgopal/henry-jekyll). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

