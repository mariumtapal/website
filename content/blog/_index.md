---
title: Some things I blogged about
description: |
  This is where I write longer articles and tutorials about my experiences and projects.
author: "Marium Tapal"
show_post_thumbnail: true
thumbnail_left: false # for list-sidebar only
show_author_byline: false
show_post_date: true
# for listing page layout
layout: list-sidebar # list, list-sidebar, list-grid

# for list-sidebar layout
sidebar: 
  title: Some things I blogged about
  description: |
    This is where I write longer articles and tutorials about my experiences and projects.
  author: "Marium Tapal"
  show_sidebar_adunit: false # show ad container

# set up common front matter for all pages inside blog/
cascade:
  author: "Marium Tapal"
  show_author_byline: true
  show_post_date: true
  show_comments: false
  # for single-sidebar layout
  sidebar:
    text_link_label: View recent posts
    text_link_url: /blog/
    show_sidebar_adunit: false # show ad container
---

** No content below YAML for the blog _index. This file provides front matter for the listing page layout and sidebar content. It is also a branch bundle, and all settings under `cascade` provide front matter for all pages inside blog/. You may still override any of these by changing them in a page's front matter.**