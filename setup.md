# Setup guide

The quickest way to get up and running with a Jekyll blog using Henry is using the included [Docker](https://www.docker.com/) configuration file. 

However, this guide shows the different ways you can get up and running with a Jekyll blog & Henry.

##### Table of content

* [Setup *new* blog with **Docker**](#setup-new-blog-with-docker)
* [Setup *new* blog directly](#setup-new-blog-directly)
* [Setup *existing* blog with **Docker**](#setup-existing-blog-with-docker)
* [Setup *existing* blog directly](#setup-existing-blog-directly)

## Setup new blog (with Docker)

### Step 1: clone the henry repo

```shell
git clone git@github.com:kaushikgopal/henry-jekyll.git my_new_blog
```

### Step 2: run the cleanup script

Unless you plan on contributing or working on Henry directly you don't need this entire repo. To get started with a new blog, I've added this handy script called `start_new_blog.sh` that morphs the Henry repo to fresh new blog.

```shell
./start_new_blog.sh
```

### Step 3: spin blog up using docker

Once you install [Docker](https://docs.docker.com/get-docker/) the setup becomes *incredibly* simple. The included Docker config file `docker-compose.yml` takes care of installing the right versions of Jekyll, Ruby and the necessary gems.

```shell
docker-compose up
```

When using Docker, spinning it up the first time takes a while (since you have to download the docker container). Subsequent runs are super snappy.

Now run your live local blog!

```shell
## on a Mac
http://0.0.0.0:4000/
## on Windows
http://localhost:4000/
```

After you have docker up and running with the right URL, start editing your posts and notice the browser reload your changes in realtime.

## Setup new blog directly

If you want to start a new blog from scratch.

### Step 1: clone the henry repo

```shell
git clone git@github.com:kaushikgopal/henry-jekyll.git my_new_blog
```

### Step 2: run the cleanup script

Unless you plan on contributing or working on Henry directly you don't need this entire repo. To get started with a new blog, I've added this handy script called `start_new_blog.sh` that morphs the Henry repo to fresh new blog.

```shell
./start_new_blog.sh
```


### Step 3: Run Jekyll as you normally would

```shell
bundle exec jekyll server --drafts 

# or my preferred way
bundle exec jekyll server --drafts --watch --force_polling --incremental --livereload
```

Your blog should be up and running!

## Setup existing blog (with Docker)

If you have an existing Jekyll blog but want to change the theme to Henry, that should also be simple.

### Step 1: update your `_config.yml`

Add the following line to the top of your config file. This make it easy to connect your browser to the Docker container.

```yml
# Docker for OSX uses a VM so we need 0.0.0.0 instead of 127.0.0.1
host: 0.0.0.0
```

Change the theme to Henry:

```yml
theme: henry-jekyll
```

_You can also just copy the [`_config.yml`](https://github.com/kaushikgopal/henry-jekyll/blob/main/_config.yml) from the Henry repo and update it accordingly._

### Step 2: copy the docker config file `docker-compose.yml`

Now copy the [`docker-compose.yml` file](https://github.com/kaushikgopal/henry-jekyll/blob/main/docker-compose.yml) from the Henry repo to your local Jekyll directory.

### Step 3: remove unnecessary files

Make sure to remove these files from your repo as it'll confuse Henry & Docker

```shell
rm Gemfile
rm Gemfile.lock
rm -rf vendor
rm -rf .bundle
```

### Step 4: tweak Jekyll setup to use Henry

You have to tweak a couple of things with your existing Jekyll blog to make sure it points to the Henry files.

#### Add the `scss` style overrides

You need to add a few files to make sure Henry's style is preserved:

1. `assets/css/style.scss`
2. `_sass/_initialize.scss`
3. `_sass/theme_override.scss`
4. `_sass/main_override.scss`

First, let's instruct Henry to switch to custom styling. Your `style.scss` file should look like this.

```scss
---
# Only the main Sass file needs front matter (the dashes are enough)
---

@import "initialize";
```

We now want to layer in the overrides properly. Copy over the [`initialize.scss`](https://github.com/kaushikgopal/henry-jekyll/blob/main/_sass/_initialize.scss) file for the Henry repo:

```scss
@import "theme", "theme_override";
@import "mixins", "code", "base";
@import "main", "main_override";
```

> The only two files you now need to worry about are the ones with the `_override` suffix.

Everything else is picked up automatically from Henry.

The `theme_override` file is where you can modify a bunch of variables like font sizes, styles and colors.

```scss
// inside ./_sass/theme_override.scss
// change font sizes, styles, colors in here

$font-size-regular:     30px;
$background-color:      black;
$color-text:            red;

// take a look at the main `theme.scss` file in Henry to see the full list of variables you can customize
```

To change specific "styles" in your page, use the `main_override.scss` file:

```scss
// change layout or site styles here

ul.post-list-content .post-link a.post-link-url {
    color: red
}

// take a look at the main `main.scss` file to see the current layout styles
```

#### Update your index layout

Henry comes with an opinionated index posts layout (your landing blog page). If you wish to use the same all you need to do is update your `index.html` page with the following content:

```html
---
layout: index
---
```

Take a look at [the `index.html` page in Henry's `_layout` folder](https://github.com/kaushikgopal/henry-jekyll/blob/main/_layouts/index.html) to see how the landing page gets generated.

### Step 5: spin blog up using docker

Once you install [Docker](https://docs.docker.com/get-docker/) the setup becomes *incredibly* simple. The included Docker config file `docker-compose.yml` takes care of installing the right versions of Jekyll, Ruby and the necessary gems.

```shell
docker-compose up
```

When using Docker, spinning it up the first time takes a while (since you have to download the docker container). Subsequent runs are super snappy.

Now run your live local blog!

```shell
## on a Mac
http://0.0.0.0:4000/
## on Windows
http://localhost:4000/
```

After you have docker up and running with the right URL, start editing your posts and notice the browser reload your changes in realtime.

## Setup existing blog directly

Henry is a good citizen of the Jekyll theme world. You can add Henry as you would any [regular Jekyll theme](https://stackoverflow.com/a/45905534).

## Step 1: Install the gem 

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

### Step 2: tweak Jekyll setup to use Henry

Follow [the same step as mentioned previously](https://github.com/kaushikgopal/henry-jekyll#step-4-tweak-jekyll-setup-to-use-henry).

###  Step 3: Run Jekyll as you normally would

```shell
bundle exec jekyll server --drafts 

# or my preferred way
bundle exec jekyll server --drafts --watch --force_polling --incremental --livereload
```

Your blog should be up and running!