# Henry

<p align="center"><img src="assets/img/henry.png"></p>

Henry is a [Jekyll](https://github.com/jekyll/) theme with a gorgeous reading experience, chock-full of features. To find out more about all the features check out this [blog post](https://blog.jkl.gg/henry-jekyll-theme/).

## Getting Started

### Getting started with Docker 

The quickest way to get up and running with a Jekyll blog using Henry is using the included [Docker](https://www.docker.com/) configuration file.

If you install [Docker](https://docs.docker.com/get-docker/) the setup becomes incredibly simple.

```shell

# 1. clone this blog
git clone git@github.com:kaushikgopal/henry-jekyll.git my_new_blog

# 2. spin everything up with Docker
docker-compose up

# 3. There is no Step 3
```

Spinning up the blog for the very first time with Docker can take a while. But after the first run, subsequent runs are snappy.

Start editing your posts and notice the live preview update in realtime.

### Getting started without Docker 

Henry is a good citizen of the Jekyll theme world. You can add Henry as you would any [regular Jekyll theme](https://stackoverflow.com/a/45905534).

Add the theme to your Jekyll site's `Gemfile`:

```ruby
gem "henry-jekyll"
```

Install the theme:

```shell
bundle install

# or install manually 
gem install henry-jekyll
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: henry-jekyll
```

Run Jekyll as you normally would

```shell
bundle exec jekyll serve
```


# Customizing your blog with Henry

Henry is intentionally built to be customizable. Here's how you can start customizing Henry to your own liking:

## Required files

You only need two files to get started with Henry:

1. `_config.yml`
2. `index.html`

Inside your `_config.yml` make sure you have Henry set as your  theme:

```yml
theme: henry-jekyll
```

Henry comes with an opinionated index posts layout. If you wish to use the same, all you need to do is add an `index.html` page with the following content:

```html
---
layout: index
---
```

Take a look at [the `index.html` page in Henry's `_layout` folder](https://github.com/kaushikgopal/henry-jekyll/blob/main/_layouts/index.html) if you want to customize it differently.

### Overriding styles

The theme should all just work but if you want to add flair and differentiate yourself from other sites/blogs, I recommend adding a few overrides `.scss` files:

1. `assets/css/style.scss`
2. `_sass/override.scss`
3. `_sass/main_override.scss`
4. `_sass/theme_override.scss`

First, let's instruct Henry to switch to custom styling. Your `style.scss` file should look like this. 

```scss
---
---
// triple - needed by Jekyll to replace main style

@import "override";
```

We now want to layer in the overrides properly. Similar to the way Henry [initializes this](https://github.com/kaushikgopal/henry-jekyll/blob/main/_sass/_initialize.scss), add an `override.scss` file:

```scss
@import "theme", "theme_override";
@import "mixins", "code", "base";
@import "main", "main_override";
```

The only two files you now need to worry about are the `_override` files. The other ones are picked up internally.

The `theme_override` file is where you can modify a bunch of variables like font sizes, styles, colors etc.

```scss
// inside ./_sass/theme_override.scss
// change font sizes, styles, colors in here

$font-size-regular:     30px;
$background-color:      black;
$color-text:            red;

// take a look at the main `theme.scss` file to see the full list of variables you can customize
```

To change specific "styles" in your page, use the `main_override.scss` file:

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

To get started check out the [DEVELOPMENT](https://github.com/kaushikgopal/henry-jekyll/blob/main/DEVELOPMENT.md) page.

## Henry in the Wild

Here are a couple of blogs that use Henry:

1. [Karthick Gopal's blog](https://blog.karthickg.com)
2. [Kaushik Gopal's blog](https://blog.jkl.gg)

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

