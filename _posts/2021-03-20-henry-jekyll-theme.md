---
layout: post
title: "Introducing Henry for Jekyll"
categories: [programming]
tags: [jekyll, henry]
canonical_url: https://blog.jkl.gg/henry-jekyll-theme/
---

<p align="center">
  <img src="/assets/images/uploads/2021/henry.webp">
</p>

I've used Jekyll as my blog engine here and meticulously tweaked it over the years to support a bunch of features. Many folks have asked me if I would ever put my theme up for sale or distribute it more widely.

I'm happy to announce that it's now available for free and [open source](https://github.com/kaushikgopal/henry-jekyll). 

Introducing [Henry](https://github.com/kaushikgopal/henry-jekyll) - a [Jekyll](https://github.com/jekyll/) theme with a gorgeous reading experience, chock-full of features.


# Features

## Customizability

A blog theme is only useful if it is versatile enough to reflect your unique character and touch. Henry is **extremely** customizable. 

With simple `scss` override files you can customize the entire look of your blog. I've made sure the overrides get layered in, on top of Henry's base CSS making it easy to quickly add your own customizations. Take a look:

<video controls muted playsinline loop>
  <source src="/assets/videos/posts/2021/henry_customization.mp4" type="video/mp4">
</video>

To see a demo of the difference, compare [this blog](https://blog.jkl.gg) (what you're currently reading) with my [brother's](https://blog.karthickg.com). Both use Henry.

You can push the boundaries by adding independent pages and nifty scripting. Take a look at this sample [portfolio](https://blog.karthickg.com/portfolio/) page I've started building for my brother's blog[^2]. 

## ~~Foot~~Sidenotes

I picked this feature up from Tufte CSS[^1] - inspired by the legendary Edward Tufte. 

If you're reading this post on a wide screen you should notice the sidenote tips above. Go ahead and hover your cursor over it to see the sidenote highlighted. If you're on a narrower screen (or phone) the sidenote morphs into a traditional footnote with quick jump links.

You can read more about this feature and its implementation in this [blog post](/jekyll-footnote-tufte-sidenote/).

## Image display

With Henry, you can display images in a variety of ways.

Here's the most basic markdown syntax:

```md
![](/assets/img/lawsofux.webp)
```

![](/assets/images/uploads/2021/henry_image_lawsofux.webp)

Or use HTML directly with customized css tags:

```html
<img class="tac" src="/assets/img/lawsofux.webp" />
```

```sass
// Added this to my main_override.scss file
.tac { margin: 0 auto }
```

<img class="tac" src="/assets/images/uploads/2021/henry_image_lawsofux.webp" />

Henry also comes with a built in "full-bleed" class:

```html
<img class="full-bleed" src="https://xxxx/63698/image.jpg" />
```

<img class="full-bleed" src="https://assets.atlasobscura.com/article_images/lg/63698/image.jpg" alt="Japanese Manhole Art" />

<div align="center" style="font-style:italic">Image Courtesy: <a href="https://www.atlasobscura.com/articles/japanese-manhole-covers">Atlas Obscura</a></div>

## Related posts

All the way at the bottom of this post, you'll notice a "related posts" section. In there, I'd like to show you more blog posts on the same topic that you might find interesting. Other blog engines have plugins that run inscrutable algorithms to come up with such a list. Sometimes it works, while other times it's embarrassingly wrong. 

I wanted to make the linking and relevance logic simpler. With Henry you simply add relevant tags for a blog post in its header:

```yaml
---
layout: post
title: "Introducing Henry - a Jekyll theme"
tags: [jekyll, blogging]
---
```

Now Henry will search for similar blog posts that have the tag "jekyll" or "blogging" and show them in the related section. It's that simple.

## External URLs (Daring Fireball style)

John Gruber of [Daring Fireball](https://daringfireball.net/) fame pioneered a style of blogging where you share an interesting link to another website but add commentary to the post giving it more context.

<video controls muted playsinline loop>
  <source src="/assets/videos/posts/2021/henry_dflink.mp4" type="video/mp4">
</video>

The `»` points you directly to the external website while clicking the primary title takes you to your own post containing the commentary.

Add an `external_url` to the top of your post and Henry takes care of everything.

```yaml
---
layout: post
title: "Fragmented Podcast - Episode #2 : Android Studio"
external_url: http://fragmentedpodcast.com/episodes/2/
---
```

## Canonical URLs 

Sometimes I write blog posts for my company's tech blog or a Medium account. If I want to give the post additional lift and surface it to my own followers, I like to additionally post the content to my own blog here. It's good idea to always have your content hosted at a place that you own and control[^3]. 

But you have to be a little careful about copy pasting content in more than one place on the internet, cause Google might ding your search engine ranking for duplicating content. The kosher way to do this is using "canonical urls".

With Henry, I can now copy paste the content from elsewhere, add the canonical url in my post and have it attributed correctly. 

```yaml
---
layout: post
title: Hackathon vote tabulation using Google Forms & Kotlin
canonical_url: https://tech.instacart.com/free-hackathon...
---
```

Should the other place decide to bring my content down, I can remove the `canonical_url` reference and rest peacefully knowing that my content will always be available here.

## Draft badges

Jekyll natively supports ["drafts"](https://jekyllrb.com/docs/posts/#drafts) - posts that are work in progress or still in the ideas phase.

You put them in a special `_drafts` folder and those draft posts only show up when you launch your server locally. But they will never get published to "production" or your public website. 

This is great but my brother mentioned that when you start to accumulate a lot of drafts locally, it becomes confusing to differentiate between the published posts and local drafts. Wouldn't it be nice if you had a "draft" badge of sorts to make the drafts jump out? 

Henry at your service:

![](/assets/images/uploads/2021/henry_drafts.webp)

## Quick setup 

A common complaint against Jekyll is that it can take time to get up and running with the right set of gems and ruby installations.

I've created [Docker containers](https://www.docker.com/resources/what-container) for Henry that allow you to get up and running pretty quickly on any machine[^4].

Here's a video of me setting up Jekyll with Henry:

<video controls muted playsinline loop>
  <source src="/assets/videos/posts/2021/henry_customization.mp4" type="video/mp4">
</video>

You also get a bunch of other quality of life (blogging) improvements like live reload and browser refresh, single command to launch locally or deploy to your server.


## Resources

### Reporting bugs

If you have noticed something off or have bugs to file, please file them as [Github issues](https://github.com/kaushikgopal/henry-jekyll/issues). I try to stay on top of that list.

### Feature requests or questions

Want to know if Henry can support a feature, or will support one? Please use the same [Github issues](https://github.com/kaushikgopal/henry-jekyll/issues) page.

If you're not comfortable with Github you can hit me up [@kaushikgopal](https://twitter.com/kaushikgopal).

### Supporting Henry

I'm fortunate to have a job that pays me to do work that I love. I'm not in need of the financial assistance right now. 

But If you're feeling generous please donate to a charity you believe in and send me a link. That'll inspire me more than anything else to keep working on Henry.

### Do you use Henry?

Feel free to update this README.md if you use Henry. It'll mean a lot to see Henry being used by creators in the wild.

[^1]: A set of tips and suggestions that help style web articles more legibly.
[^2]: He's one of the sharpest product people I know and is currently on the market. Hit him up if you're interested.
[^3]: I learnt this the hard way when the startup I worked for (Wedding Party) shuttered down. It had a burgeoning tech blog with a lot of my earliest Android content. We were acquihired and the domain had to be given away. Alas! My posts were gone. Never again, I thought to myself. 
[^4]: No more worrying about installing the right version of Ruby or Jekyll or a specific gem. 