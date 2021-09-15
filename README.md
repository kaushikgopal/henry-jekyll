# Henry

<p align="center"><img src="assets/img/henry.png"></p>

Henry is a [Jekyll](https://github.com/jekyll/) theme with a gorgeous reading experience, chock-full of features. To find out more about all the features check out this [blog post](https://jkl.gg/b/henry-jekyll-theme/).

# Getting Started

The easiest way to get up and running with a Jekyll blog using Henry is using the included [Docker](https://www.docker.com/) configuration file.

```shell
# 1. clone Henry
git clone git@github.com:kaushikgopal/henry-jekyll.git my_blog
# 2. cleanup script so unnecessary files are remoed
./start_new_blog.sh
# 3. spin up blog with docker
docker-compose up
```

You're good to go!

```shell
## on a Mac
http://0.0.0.0:4000/
## on Windows
http://localhost:4000/
```

You can setup new/existing blogs with Henry, with or without Docker. Feel free to refer to this [setup guide](./setup.md) for details.

# Publishing guide

## Github Pages

If you wish to publish your blog using [Github Pages](https://pages.github.com) (a popular free hosting option) you can follow this [publishing guide](./publishing_github_pages.md).

## Firebase Hosting (included with Docker container)

Another good option to publish your blog is [Firebase hosting](https://firebase.google.com/docs/hosting). It includes a pretty generous free plan and allows plenty of customizability. Here's a [setup guide](./publishing_firebase_hosting.md).

# Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/kaushikgopal/henry-jekyll). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

To get started check out the [DEVELOPMENT](https://github.com/kaushikgopal/henry-jekyll/blob/main/DEVELOPMENT.md) page.

# Henry in the Wild

Here are a couple of blogs that use Henry:

1. [Karthick Gopal's blog](https://blog.karthickg.com)
2. [Kaushik Gopal's blog](https://blog.jkl.gg)
3. [Nic Finn's blog](https://neodymiumphi.sh) _(Github Pages)_

# License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
