#!/bin/sh


# This Henry repo has the source for the actual theme
# If you want to contribute or develop Henry
# then cloning this repo and working on it makes sense.

# If you just want to start a blog that _uses_ Henry
# This cleanup script only keeps the relevant portions you need


YELLOW='\033[1;33m'
PURPLE='\033[1;35m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

printf "\n\n${YELLOW}---- remove files already supplied by gem${NC}\n"

rm _sass/base.scss
rm _sass/code.css
rm _sass/main.scss
rm _sass/mixins.scss
rm _sass/theme.scss

rm -rf assets/img/*
rm -rf assets/js

rm -rf _layouts
rm -rf _includes

printf "\n\n${GRAY}---- removing gem development files${NC}\n"
rm henry-jekyll.gemspec
rm LICENSE.txt
rm README.md
rm DEVELOPMENT.md
rm .ruby-version
rm Gemfile
rm Gemfile.lock

printf "\n\n${GRAY}---- Cleanup${NC}\n"
rm *.gem
rm -rf .bundle
rm -rf .idea
rm -rf .jekyll-cache
rm -rf .jekyll-metadata
rm -rf .sass-cache
rm -rf _site
rm -rf vendor


printf "\n\n${YELLOW}---- cleaning up git config${NC}\n"
rm -rf .idea
rm -rf .git
git init
git add .
git commit -m "first commit (jekyll blog with henry theme)"


printf "\n\n${PURPLE}All done!  ${NC}\n"
