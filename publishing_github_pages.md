# Using Henry with GitHub Pages

Utilizing Henry as a GH Pages theme is very simple, but does require a couple minor changes.

One easy way to do this is to fork the Henry repo, then do the traditional steps outlined elsewhere to make your new repo a GitHub Pages site (name the repo `<username>.github.io`). These basic instructions can be found [here](https://pages.github.com/).

Alternatively, you can create an empty repo, per the GitHub Pages instruction, and download the Zip of Henry, and export it into your cloned repo locally, then commit the changes to your page.

In either case, there are a few things you must do in order for Pages to build properly.

__Note: All of these changes have been proposed under the "Pages_Compatible" branch.

## Fix Plugins

Pages only allows specifically-supported jekyll plugins on Pages sites. The two plugins that Pages needs in order to build Henry properly are `jekyll-feed` and `jekyll-seo-tag`, so we need to add them to our `_config.yml`.

```
# Jekyll Plugins Necessary for GH Pages
plugins:
  - jekyll-feed
  - jekyll-seo-tag
```

## _config.yml exclude declarations

It looks like GH Pages is overly specific in how it reads the config file. Due to this, the amount of spacing before each `-` under `exclude:` has to be fixed to 1 space. Otherwise, GH Pages throws an error.

For example:
```
exclude:
  - docker-compose-publish.yml
  - docker-compose.yml
  - firebase.json
  - .idea/
```
should look like this:
```
exclude:
 - docker-compose-publish.yml
 - docker-compose.yml
 - firebase.json
 - .idea/
```


## Fix style references

Additionally, when Pages builds the site, `_initialize.scss` imports all of the other files within `/_sass`. For some reason, it does not recognize `code.css`, since it's not an `scss`. Fortunately, you can simply rename the file to `code.scss`. To my knowledge, this has no effect on site performance (locally or on GH Pages).


## TL;DR

* Add `jekyll-feed` and `jekyll-seo-tag` plugins to `_config.yml`
* Set the exclude spacing to 1 space before each dash
* Rename `/_sass/code.css` to `/_sass/code.scss`


# Configure .gitignore

Lastly, if you're building and testing locally with `bundle exec jekyll serve`, you should configure `.gitignore` so that it doesn't include the folders built by jekyll on your local machine (since this process is done by GitHub whenever you push changes). Most of the relevant files and folders are already included there, so this should only require changes if you're using a tool that leaves files in the directory that you don't want included in your Git repository. For example, I use [Obsidian](https://obsidian.md) to create and edit my blog posts, so I have my `.gitignore` set to ignore the `.obsidian` directory in my repo.

```
_site
.sass-cache
.jekyll-cache
.jekyll-metadata
```




# Building locally

In order to build locally using `bundle exec jekyll serve --drafts`, you'll need to set up jekyll on your local machine at the cloned repo. The safest way to do this is probably to run jekyll new <random test folder name>, then copy the Gemfile from this test folder into your repo. You should also exclude `Gemfile`, `Gemfile.lock` `.git/`, and `.henry-jekyll.gemspec` in your `_config.yml`, to keep them from being built into your site.
